class AppAbbreviationFetcher {
  const AppAbbreviationFetcher._();

  static String from(String input) {
    RegExp regExp = RegExp(r'[A-Z]');
    Iterable<Match> matches = regExp.allMatches(input);
    String result = matches.take(2).map((m) => m.group(0)).join();
    return result;
  }
}
