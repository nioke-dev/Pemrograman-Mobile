void main() {
  int Index = 1;
  for (Index = 10; Index < 27; Index++) {
    print(Index);
    if (Index == 21)
      break;
    else if (Index > 1 || Index < 7) continue;
    print(Index);
  }
}
