page 50107 Uzd_test_page
{
    Caption = 'Uzduoties test';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Input; InputText)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Reverse)
            {
                Caption = 'Reverse';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Uzd: Codeunit "Uzd_1";
                begin
                    Uzd.Reverse(InputText);
                end;
            }
            action(FindMaxMin)
            {
                Caption = 'Find min/max';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Uzd: Codeunit "Uzd_1";
                begin
                    Uzd.FindMaxAndMin();
                end;
            }
            action(FindRepeats)
            {
                Caption = 'Find repeats';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Uzd: Codeunit "Uzd_1";
                begin
                    Uzd.FindRepeats();
                end;
            }
            action(CountVowelsAndConsonants)
            {
                Caption = 'Count vowels';
                ApplicationArea = All;

                trigger OnAction()
                var
                    Uzd: Codeunit "Uzd_1";
                begin
                    Uzd.CountVowels();
                end;
            }
        }
    }

    var
        myInt: Integer;
        InputText: Text;
}