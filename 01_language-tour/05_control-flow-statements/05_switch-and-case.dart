// https://dart.cn/guides/language/language-tour#switch-and-case

void executeClosed() => print("executeClosed");
void executePending() => print("executePending");
void executeApproved() => print("executeApproved");
void executeDenied() => print("executeDenied");
void executeOpen() => print("executeOpen");
void executeUnknown() => print("executeUnknown");
void executeNowClosed() => print("executeNowClosed");

void main(List<String> args) {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      executeClosed();
      break;
    case 'PENDING':
      executePending();
      break;
    case 'APPROVED':
      executeApproved();
      break;
    case 'DENIED':
      executeDenied();
      break;
    case 'OPEN':
      executeOpen();
      break;
    default:
      executeUnknown();
  }

  var _command = 'CLOSED';
  switch (_command) {
    case 'CLOSED':
      executeClosed();
      continue nowClosed;
    // Continues executing at the nowClosed label.

    nowClosed:
    case 'NOW_CLOSED':
      // Runs for both CLOSED and NOW_CLOSED.
      executeNowClosed();
      break;
  }
}
