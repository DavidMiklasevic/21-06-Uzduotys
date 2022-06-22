codeunit 50105 Uzd_1
{
    trigger OnRun()
    begin

    end;

    procedure Reverse(var TextVar: Text)
    var
        ResultText: Text;
    begin
        for myInt := StrLen(TextVar) - 1 DownTo 0 do
            ResultText := ResultText + CopyStr(TextVar, myInt - 1, 1);
        Message(ResultText);
    end;

    procedure FindMaxAndMin()
    var
        MaxInt: Integer;
        MinInt: Integer;
        i: Integer;
    begin
        ListOfInt.AddRange(16, 22, 68, 4, 13, 99, 16, 67, 76, 41, 27, 3, 55, 24, 15, 88, 36, 92, 96, 39, 33, 62, 57, 65, 37, 25, 10, 69, 21, 85, 51, 43, 8, 12, 34, 46, 6, 1, 90, 40, 78, 53, 94, 9, 73, 19, 97, 18, 80, 64, 93, 60, 89, 95, 23, 56, 20, 32, 50, 28, 49, 2, 31, 71, 82, 63, 77, 58, 91, 74, 72, 42, 30, 75, 17, 79, 59, 38, 48, 83, 54, 35, 61, 84, 45, 11, 7, 70, 5, 87, 66, 81, 98, 26, 47, 14, 52, 29, 86, 44);
        MaxInt := ListOfInt.Get(1);
        MinInt := ListOfInt.Get(1);
        for i := 1 to ListOfInt.Count do
            if MaxInt < ListOfInt.Get(i) then MaxInt := ListOfInt.Get(i);
        for i := 1 to ListOfInt.Count do
            if MinInt > ListOfInt.Get(i) then MinInt := ListOfInt.Get(i);
        Message('Didziausia reiksme: ' + Format(MaxInt) + ' Maziausia reiksme: ' + Format(MinInt));
    end;

    procedure FindRepeats()
    var
        i: Integer;
        ListOfRepeats: List of [Integer];
        Temp: Integer;
    begin
        ListOfInt.AddRange(16, 22, 68, 4, 13, 99, 16, 67, 76, 41, 27, 3, 55, 24, 15, 88, 36, 92, 96, 39, 33, 62, 57, 65, 37, 25, 10, 69, 21, 85, 51, 43, 8, 12, 34, 46, 6, 1, 90, 40, 78, 53, 94, 9, 73, 19, 97, 18, 80, 64, 93, 60, 89, 95, 23, 56, 20, 32, 50, 28, 49, 2, 31, 71, 82, 63, 77, 58, 91, 74, 72, 42, 30, 75, 17, 79, 59, 38, 48, 83, 54, 35, 61, 84, 45, 11, 7, 70, 5, 87, 66, 81, 98, 26, 47, 14, 52, 29, 86, 44);
        for i := 1 to ListOfInt.Count do
            Temp := ListOfInt.Get(i);
        ListOfInt.RemoveAt(i);
        if ListOfInt.Contains(Temp) then Message(Format(Temp) + ' kartojasi');
        Message(Format(ListOfRepeats));
    end;

    procedure CountVowels()
    var
        TextVar: Text;
        Where: Text;
        Which: Text;
        ResultVar: Text;
        Temp: Text;
    begin
        Textvar := 'Programuotojo ar tiesiog bet kokio IT specialisto profesija taps vis labiau įprasta.';
        Where := '=';
        Which := 'BbCcČčDdFfGgHhJjKkLlMmNnPpRrSsŠšTtVvZzŽž';
        Temp := DelChr(TextVar, Where, Which);
        Which := ' .,';
        ResultVar := DelChr(Temp, Where, Which);
        Message('Priebalsiu skaicius: ' + Format(StrLen(TextVar) - StrLen(Temp)) + ' Balsiu skaicius: ' + Format(StrLen(ResultVar)));
    end;

    var
        myInt: Integer;
        ListOfInt: List of [Integer];

}