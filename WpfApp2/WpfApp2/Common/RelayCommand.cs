using System.Windows;
using System.Windows.Input;
using System.Windows.Threading;

namespace WpfApp2.Common
{
    public delegate void ExecuteHandler(object parameter);
    public delegate bool CanExecuteHandler(object parameter);
    public class RelayCommand : ICommand
    {
        private readonly CanExecuteHandler canExecute;
        private readonly ExecuteHandler execute;
        private readonly EventHandler requerySuggested;

        public event EventHandler CanExecuteChanged;

        public RelayCommand(ExecuteHandler execute, CanExecuteHandler canExecute = null)
            : this()
        {
            this.execute = execute ?? throw new ArgumentNullException(nameof(execute));
            this.canExecute = canExecute;

            requerySuggested = (o, e) => Invalidate();
            CommandManager.RequerySuggested += requerySuggested;
        }

        public RelayCommand(Action execute, Func<bool> canExecute = null)
            : this
            (
                  p => execute(),
                  p => canExecute?.Invoke() ?? true
            )
        { }

        private RelayCommand()
            => dispatcher = Application.Current.Dispatcher;

        private readonly Dispatcher dispatcher;

        public void RaiseCanExecuteChanged()
        {
            if (dispatcher.CheckAccess())
                Invalidate();
            else
                dispatcher.BeginInvoke((Action)Invalidate);
        }
        private void Invalidate()
            => CanExecuteChanged?.Invoke(this, EventArgs.Empty);

        public bool CanExecute(object parameter) => canExecute?.Invoke(parameter) ?? true;

        public void Execute(object parameter) => execute?.Invoke(parameter);
    }

    public delegate void ExecuteHandler<T>(T parameter);
    public delegate bool CanExecuteHandler<T>(T parameter);

    public class RelayCommand<T> : RelayCommand
    {
        public RelayCommand(ExecuteHandler<T> execute, CanExecuteHandler<T> canExecute = null)
            : base
            (
                  p =>
                  {
                      if (p is T t)
                          execute(t);
                  },
                  p => (p is T t) && (canExecute?.Invoke(t) ?? true)
            )
        { }
    }
}
