// https://dart.cn/guides/language/language-tour#break-and-continue

bool shutDownRequested() => true;
void processIncomingRequests() => print("hello world");

class Candidate {
  int yearsExperience = 0;

  Candidate(int yearsExperience);

  void interview() => print("hello world");
}

void main(List<String> args) {
  while (true) {
    if (shutDownRequested()) break;
    processIncomingRequests();
  }

  var candidates = [Candidate(1), Candidate(2), Candidate(6)];
  for (int i = 0; i < candidates.length; i++) {
    var candidate = candidates[i];
    if (candidate.yearsExperience < 5) {
      continue;
    }
    candidate.interview();
  }

  candidates.where((c) => c.yearsExperience >= 5).forEach((c) => c.interview());
}
