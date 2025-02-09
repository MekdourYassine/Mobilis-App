unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, ADODB, Grids, DBGrids, StdCtrls,clipbrd,StrUtils,
  Buttons,DateUtils,ComObj;

type
    TForm9 = class(TForm)
    StringGrid1: TStringGrid;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
   procedure Button1Click(Sender: TObject);
   procedure FormCreate(Sender: TObject);
   procedure StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
     MousePos: TPoint; var Handled: Boolean);
    procedure StringGrid1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
     procedure StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
   procedure StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
   procedure StringGrid1KeyUp(Sender: TObject; var Key: Word;
     Shift: TShiftState);
    procedure StringGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DeleteRow(rowTop:integer;rowBottom:integer);
    procedure DeleteCol(colLeft:integer;colRight:integer);
   procedure ClearCells(Top:Integer;Left:Integer;Bottom:Integer;Right:Integer);
   procedure UpdateLineNumber;
   procedure CopySelection;
    procedure PastSelection;
    procedure DeleteSelection;
    procedure AdjustGrid(S:String);
    procedure Initialize;
  //  procedure FormShow(Sender: TObject);

    function FindNext(strToFind:String;startPos:Integer;findExact:Boolean;nCol:integer):TPoint;
    procedure SpeedButton1Click(Sender: TObject);
    procedure StringGrid1SelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    Procedure SauveGrille(NomFichier:String;Grille:TStringGrid);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
   function recuperer_plus_grande_chaine(col:integer):integer;


  private
    { Private declarations }

   selectionCol0, selectionRow0 : Integer;
    isDeleteRow,isDeleteCol : Boolean;
    ismouseDown:Boolean;
    rowDeleted,colDeleted : Integer;
    val :integer;
    MaDate: TDatetime;
    verific: integer;
    verific1: integer;
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}




uses Unit10, Math,IniFiles;

Const
  crCursorCross=1;
  crCursorRight=2;
  crCursorDown=3;


procedure Tform9.StringGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
  xSel0,xSel1,ySel0,ySel1:integer;
  myRect: TGridRect;
begin
  if key in [8,16..20,91..93,27,112..123,144..145] then
    abort     // pour quitter la procedure
  else if not(StringGrid1.EditorMode) then
  begin
    if Shift=[ssCtrl] then
    begin
      if key=67 then
        CopySelection       //on copie si on clic sur ctrl + c
      else if (key=86) then
        PastSelection      //on colle si on clic sur ctrl + v
      else if key=88 then
      begin
        CopySelection;   //  couper en utilisant ctrl + x
        DeleteSelection;
      end;
    end
    else if (Key=46) then
    begin
      DeleteSelection;
    end





    else if (key=38) or (Key=40) or (Key=33) or (Key=34) then
    begin
      if ((Key=40) or (Key=34)) AND (StringGrid1.Row=(StringGrid1.RowCount-1)) then
      begin
        if (ssShift in Shift) then
        begin
          ySel0:=StringGrid1.Selection.Top;
          xSel0:=StringGrid1.Selection.right;
          xSel1:=StringGrid1.Selection.left;
        end
        else if StringGrid1.Selection.left=0 then
          StringGrid1.Col:=1;
        SetRoundMode(rmDown);
        if Key=40 then
        //  StringGrid1.RowCount:=StringGrid1.RowCount+1
        else if Key=34 then
          StringGrid1.RowCount:=StringGrid1.RowCount+Round((StringGrid1.Height-StringGrid1.RowHeights[0]-2*StringGrid1.GridLineWidth)/(StringGrid1.RowHeights[1]+StringGrid1.GridLineWidth))-1;
        UpdateLineNumber;
        if (ssShift in Shift) then
        begin
          myRect.Right:=xSel0;
          myRect.Left:=xSel1;
          myRect.Bottom:=StringGrid1.Row;
          myRect.top:=ySel0;
          StringGrid1.Selection:=myRect;
        end;
      end
      else if (ssShift in Shift) then
      begin
        if StringGrid1.Selection.left=0 then
        begin
          if (StringGrid1.row-selectionRow0)>0 then
          begin
              myRect.Bottom:=StringGrid1.row;
            myRect.top:=StringGrid1.Selection.Top;
            myRect.Right:=StringGrid1.Selection.right;
            myRect.Left:=0;
          end
          else
          begin
            myRect.top:=StringGrid1.Selection.Bottom;
            myRect.Bottom:=StringGrid1.row;
            myRect.Right:=StringGrid1.Selection.right;
            myRect.Left:=0;
          end;
          StringGrid1.Selection:=myRect;
        end;
      end
      else if StringGrid1.Selection.left=0 then
        StringGrid1.Col:=1;
    end






    else if (Key=39) then
    begin
      if (StringGrid1.Col=(StringGrid1.ColCount-1)) then
      begin
        if (ssShift in Shift) then
        begin
          xSel0:=StringGrid1.Selection.left;
          ySel0:=StringGrid1.Selection.Top;
          ySel1:=StringGrid1.Selection.Bottom;
        end
        else if StringGrid1.Selection.Top=0 then
          StringGrid1.Top:=1;
        SetRoundMode(rmDown);
        if Key=39 then
        //  StringGrid1.ColCount:=StringGrid1.ColCount+1;
        if (ssShift in Shift) then
        begin
          myRect.Right:=StringGrid1.Col;
          myRect.Left:=xSel0;
          myRect.Bottom:=ySel1;
          myRect.top:=ySel0;
          StringGrid1.Selection:=myRect;
        end;
      end
      else if (ssShift in Shift) then
      begin
        if StringGrid1.Selection.Top=0 then
        begin
          if (StringGrid1.Col-selectionCol0)>0 then
          begin
            myRect.right:=StringGrid1.col;
            myRect.left:=StringGrid1.Selection.left;
            myRect.Bottom:=StringGrid1.Selection.Bottom;
            myRect.Top:=0;
          end
          else
          begin
            myRect.left:=StringGrid1.Selection.Right;
            myRect.Right:=StringGrid1.col;
            myRect.Bottom:=StringGrid1.Selection.Bottom;
            myRect.Top:=0;
          end;
          StringGrid1.Selection:=myRect;
        end;
      end
      else if StringGrid1.Selection.Top=0 then
        StringGrid1.Row:=1;
    end;


  end;
end;

procedure Tform9.StringGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  myRect:TGridRect;
begin
  if isDeleteRow then
  begin
    myRect.left := 0;
    myRect.Top := rowDeleted;
    myRect.Right := StringGrid1.ColCount;
    myRect.Bottom := rowDeleted;
    StringGrid1.Selection:=myRect;
    isDeleteRow:=False;
  end
  else if isDeleteCol then
  begin
    myRect.left := colDeleted;
    myRect.Top := 0;
    myRect.Right := colDeleted;
    myRect.Bottom := StringGrid1.RowCount;;
    StringGrid1.Selection:=myRect;
    isDeleteCol:=False;
  end;
end;

procedure Tform9.StringGrid1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  myRect: TGridRect;
  PosSouris: TPoint;
  clickCol1,clickRow1:Integer;
begin
  if button = mbleft then
  begin
    StringGrid1.MouseToCell(x,y,clickCol1,clickRow1);
    if (clickCol1=0) and (clickRow1=0) then
    begin
      StringGrid1.EditorMode:=False;
      myRect.left := 0;
      myRect.Top := 0;
      myRect.Right := StringGrid1.ColCount;
      myRect.Bottom := StringGrid1.RowCount-1;
      StringGrid1.Selection:=myRect;
      selectionCol0:=StringGrid1.Col;
      selectionRow0:=StringGrid1.Row;
      isMouseDown:=True;
    end
    else if clickCol1=0 then
    begin
      StringGrid1.EditorMode:=False;
      if (ssShift in Shift) then
      begin
        if (clickRow1-selectionRow0)>0 then
        begin
          myRect.Top:=clickRow1;
          myRect.Bottom:=selectionRow0;
          myRect.Right:=StringGrid1.Selection.right;
          myRect.Left:=0;
        end
        else
        begin
          myRect.top:=selectionRow0;
          myRect.Bottom:=clickRow1;
          myRect.Right:=StringGrid1.Selection.right;
          myRect.Left:=0;
        end;
        StringGrid1.Selection:=myRect;
      end
      else
      begin
        myRect.Right := 0;
        myRect.Top := clickRow1;
        myRect.Left := StringGrid1.ColCount;
        myRect.Bottom := clickRow1;
        StringGrid1.Selection:=myRect;
        selectionCol0:=StringGrid1.Col;
        selectionRow0:=StringGrid1.Row;
        isMouseDown:=True;
      end;
    end
    else if clickRow1=0 then
    begin
      StringGrid1.EditorMode:=False;
      if (ssShift in Shift) then
      begin
        if (StringGrid1.col-selectionCol0)>0 then
        begin
          myRect.Bottom:=StringGrid1.RowCount ;
          myRect.top:=0;
          myRect.Right:=selectionCol0;
          myRect.Left:=clickCol1;
        end
        else
        begin
          myRect.Bottom:=StringGrid1.RowCount ;
          myRect.top:=0;
          myRect.Right:=clickCol1;
          myRect.Left:=selectionCol0;
        end;
        StringGrid1.Selection:=myRect;
      end
      else
      begin
        myRect.Left := clickCol1;
        myRect.Bottom := 0;
        myRect.Right := clickCol1;
        myRect.Top := StringGrid1.RowCount;
        StringGrid1.Selection:=myRect;
        selectionCol0:=StringGrid1.Col;
        selectionRow0:=StringGrid1.Row;
        isMouseDown:=True;
      end;
    end
    else if (ssShift in Shift) then
    begin
      myRect.Left := selectionCol0;
      myRect.Top := selectionRow0;
      myRect.Right := StringGrid1.Col;
      myRect.Bottom := StringGrid1.Row;
      StringGrid1.Selection:= myRect;
    end
    else
    begin
      selectionCol0:=StringGrid1.Col;
      selectionRow0:=StringGrid1.Row;
      isMouseDown:=True;
    end;
  end
  else if button = mbright then
  begin
    GetCursorPos(PosSouris);
    StringGrid1.MouseToCell(X,Y,clickCol1,clickRow1);
    if (clickCol1<>0) and (clickRow1<>0) then
    begin
      if (Clipboard.AsText=null) or (ClipBoard.AsText='') then
        //coller1.Enabled:=False
      else
       // coller1.Enabled:=True;
      //PopupMenu1.Popup(PosSouris.X,PosSouris.y);
    end;
  end;
end;
procedure Tform9.StringGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  myRect: TGridRect;
  selectionCol1,selectionRow1:Integer;
begin
  StringGrid1.MouseToCell(x,y,selectionCol1,selectionRow1);
  if isMouseDown then
  begin

    if y>StringGrid1.height then
    begin
      if (Stringgrid1.TopRow+Stringgrid1.VisibleRowCount)<Stringgrid1.RowCount then
      begin
        StringGrid1.TopRow:=StringGrid1.TopRow+1;
        selectionRow1:=StringGrid1.TopRow;
      end;
    end
    else if y<(StringGrid1.top+StringGrid1.RowHeights[0]) then
    begin
      if Stringgrid1.TopRow>1 then
      begin
        StringGrid1.TopRow:=StringGrid1.TopRow-1;
        selectionRow1:=StringGrid1.TopRow;
      end;
    end;

    if ((selectionCol1<>0) or (selectionRow1<>0)) and (selectionCol1<>-1) and (selectionRow1<>-1) then
    begin
      if StringGrid1.Selection.Top=0 then
      begin
        myRect.Left := selectionCol0;
        myRect.Bottom := selectionRow0;
        myRect.Right := selectionCol1;
        myRect.Top := StringGrid1.RowCount;
        StringGrid1.Selection:= myRect;
      end
      else if StringGrid1.Selection.Left=0 then
      begin
        myRect.Right := selectionCol0;
        myRect.Top := selectionRow0;
        myRect.Left := StringGrid1.ColCount;
        myRect.Bottom := selectionRow1;
        StringGrid1.Selection:= myRect;
      end
      else
      begin
        myRect.Right := selectionCol0;
        myRect.Top := selectionRow0;
        myRect.Left := selectionCol1;
        myRect.Bottom := selectionRow1;
        StringGrid1.Selection:= myRect;
      end;
    end;
  end
  else
  begin
    if (selectionCol1=0) AND (selectionRow1<>0) then
      StringGrid1.Cursor:=crCursorRight
    else if (selectionRow1=0) AND (selectionCol1<>0) then
      StringGrid1.Cursor:=crCursorDown
    else
      StringGrid1.Cursor:=crCursorCross;
  end;
end;


procedure Tform9.StringGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  isMouseDown:=False;
end;

procedure Tform9.DeleteRow(rowTop:integer;rowBottom:integer);
var
  i,j:integer;
  numberLength:integer;
begin
  if rowTop=0 then
    rowTop:=1;
  for i := rowBottom to StringGrid1.RowCount-2 do
    for j := 0 to StringGrid1.ColCount-1 do
      StringGrid1.Cells[j, i-rowBottom+rowTop] := StringGrid1.Cells[j, i+1];
  for i := StringGrid1.RowCount-(rowbottom-rowTop+1) to StringGrid1.RowCount-1 do
    for j := 0 to StringGrid1.ColCount-1 do
      StringGrid1.Cells[j, i] := '';
  UpdateLineNumber;
  StringGrid1.RowCount := StringGrid1.RowCount - (rowbottom-rowTop+1);
  if StringGrid1.RowCount<2 then
  Begin
    StringGrid1.RowCount:=2;
    StringGrid1.FixedRows:=1;
  end;
  isDeleteRow:=True;
  rowDeleted:=rowTop;

  SetRoundMode(rmDown);
  numberLength:=Round(Log10(stringGrid1.RowCount));
  if numberLength<2 then
    numberLength:=2;
  StringGrid1.ColWidths[0]:=(numberLength+1) * 8;
end;
procedure Tform9.DeleteCol(colLeft:integer;colRight:integer);
var
  i,j:integer;
  numberLength:integer;
begin
  if colLeft=0 then
    colLeft:=1;
  for i := colRight to StringGrid1.ColCount-2 do
    for j := 0 to StringGrid1.RowCount-1 do
      StringGrid1.Cells[i-colRight+colLeft,j] := StringGrid1.Cells[i+1,j];
  for i := StringGrid1.ColCount-(colRight-colLeft+1) to StringGrid1.ColCount-1 do
    for j := 0 to StringGrid1.RowCount-1 do
      StringGrid1.Cells[i,j] := '';
  StringGrid1.ColCount := StringGrid1.ColCount - (colRight-colLeft+1);
  if StringGrid1.ColCount<2 then
  Begin
    StringGrid1.ColCount:=2;
    StringGrid1.FixedCols:=1;
  end;
  isDeleteCol:=True;
  colDeleted:=colLeft;
end;

procedure Tform9.ClearCells(Top:Integer;Left:Integer;Bottom:Integer;Right:Integer);
var
  x,y:Integer;
begin
  if Top=0 then
    Top:=1;
  for y:=Top to Bottom do
  begin
    for x:=Left to right do
    begin
      StringGrid1.Cells[x,y]:='';
    end;
  end;
end;
procedure Tform9.UpdateLineNumber;
var i,numberLength: integer;
begin
  for i:=1 to stringGrid1.RowCount do
  begin
    StringGrid1.Cells[0,i] := intToStr(i);
  end;
  SetRoundMode(rmDown);
  numberLength:=Round(Log10(stringGrid1.RowCount));
  if numberLength<2 then
    numberLength:=2;
  StringGrid1.ColWidths[0]:=(numberLength+1) * 8;
end;

procedure Tform9.CopySelection;
var
  S: string;
  GRect: TGridRect;
  C, R: Integer;
  aTop, aLeft: Integer;
begin
  GRect := StringGrid1.Selection;
  S  := '';

  if GRect.Left = 0 then aleft:=1
  else aleft:=GRect.Left;
  if GRect.Top = 0 then aTop:=1
  else aTop:=GRect.Top;

  for R := aTop to GRect.Bottom do
  begin
    for C := aleft to GRect.Right do
    begin
      if C = GRect.Right then  S := S + (StringGrid1.Cells[C, R])
      else
        S := S + StringGrid1.Cells[C, R] + #9;
    end;
    S := S + #13#10;
  end;
  if S<>#13#10 then
    ClipBoard.AsText := S;
end;

procedure Tform9.PastSelection;
var
  Grect: TGridRect;
  S, CS, F: string;
  L, R, C: integer;
begin
  GRect := StringGrid1.Selection;
  if GRect.left=0 then GRect.left:=1;
  if GRect.Top=0 then GRect.Top:=1;
  StringGrid1.Selection := GRect;
  L := GRect.Left;
  R := GRect.Top;
  S := ClipBoard.AsText;
  R := R - 1;

  if (Pos(#13,S)=0) and (S<>'') then
    StringGrid1.Cells[StringGrid1.Col , StringGrid1.Row]:=ClipBoard.AsText
  else
  begin
    if RightStr(S,2)<>(#13+#10) then
      S:=S+#13+#10;
    AdjustGrid(S);
    while (Pos(#13, S) > 0) do
    begin
      R  := R + 1;
      C  := L - 1;
      CS := Copy(S, 1,Pos(#13, S));
      while Pos(#9, CS) > 0 do
      begin
        C := C + 1;
        if (C <= StringGrid1.ColCount - 1) and (R <= StringGrid1.RowCount - 1) then
          StringGrid1.Cells[C, R] := Copy(CS, 1,Pos(#9, CS) - 1);
        F:= Copy(CS, 1,Pos(#9, CS) - 1);
        Delete(CS, 1,Pos(#9, CS));
      end;
      if (C <= StringGrid1.ColCount - 1) and (R <= StringGrid1.RowCount - 1) then
        StringGrid1.Cells[C + 1,R] := Copy(CS, 1,Pos(#13, CS) - 1);
      Delete(S, 1,Pos(#13, S));
      if Copy(S, 1,1) = #10 then
        Delete(S, 1,1);
    end;
  end;
  GRect.Bottom:=GRect.Top;
  GRect.Right:=Grect.Left;
  StringGrid1.Selection:=Grect;
end;

procedure Tform9.DeleteSelection;
Begin
  if StringGrid1.Selection.Left=0 then
    DeleteRow(StringGrid1.Selection.Top, StringGrid1.Selection.Bottom)
  else if StringGrid1.Selection.Top=0 then
    DeleteCol(StringGrid1.Selection.Left, StringGrid1.Selection.Right)
  else if (StringGrid1.Selection.Left=StringGrid1.Selection.Right) and (StringGrid1.Selection.Top=StringGrid1.Selection.Bottom) then
    StringGrid1.Cells[StringGrid1.Col,StringGrid1.Row]:=''
  else
    ClearCells(StringGrid1.Selection.Top,StringGrid1.Selection.Left,StringGrid1.Selection.Bottom,StringGrid1.Selection.Right);
end;

procedure Tform9.AdjustGrid(S:String);
var
  Grect: TGridRect;
  CS: string;
  L, R, C: integer;
begin
  GRect := StringGrid1.Selection;
  L := GRect.Left;
  R := GRect.Top;
  R := R - 1;
  C:=L;
  CS := Copy(S, 1,Pos(#13, S));
  while Pos(#9, CS) > 0 do
  begin
    C := C + 1;
    Delete(CS, 1,Pos(#9, CS));
  end;
  while (Pos(#13, S) > 0) do
  begin
    R  := R + 1;
    Delete(S, 1,Pos(#13, S));
    if Copy(S, 1,1) = #10 then
      Delete(S, 1,1);
  end;
  if StringGrid1.ColCount<(C+1) then
    StringGrid1.ColCount:=C+1;
  if StringGrid1.RowCount<(R+1) then
  begin
    StringGrid1.RowCount:=R+1;
    UpdateLineNumber;
  end;
end;

procedure Tform9.Initialize;
begin
//  StringGrid1.Cells[1,0] := 'A';
//  StringGrid1.ColWidths[1]:=100;
//  StringGrid1.Cells[2,0] := 'B';
//  StringGrid1.Cells[3,0] := 'C';
//  StringGrid1.Cells[4,0] := 'D';
//  StringGrid1.Cells[5,0] := 'E';
//  StringGrid1.Cells[6,0] := 'F';
//  updateLineNumber;
//  Screen.Cursors[crCursorCross] := LoadCursorFromFile('cursor\CROSS.CUR');
 // Screen.Cursors[crCursorRight] := LoadCursorFromFile('cursor\RIGHT.CUR');
 // Screen.Cursors[crCursorDown] := LoadCursorFromFile('cursor\DOWN.CUR');
  //StringGrid1.Cursor:= crCursorCross;
end;


procedure Tform9.StringGrid1MouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
   if (Stringgrid1.TopRow+Stringgrid1.VisibleRowCount)<Stringgrid1.RowCount then
        StringGrid1.TopRow:=StringGrid1.TopRow+1;
   abort;
end;

procedure Tform9.StringGrid1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);
begin
  if Stringgrid1.TopRow>1 then
        StringGrid1.TopRow:=StringGrid1.TopRow-1;
  abort;
end;


function Tform9.FindNext(strToFind:String;startPos:Integer;findExact:Boolean;nCol:integer):TPoint;
var
  i:integer;
  resultPoint:TPoint;
begin
  i:=startPos;
  resultPoint.X:=-1;
  resultPoint.Y:=-1;
  while (i<=StringGrid1.RowCount) and (resultPoint.X=-1) do
  begin
    if findExact then
    begin
      if StringGrid1.Cells[nCol,i]=strToFind then
      begin
        resultPoint.X:=nCol;
        resultPoint.Y:=i;
        if (i-Stringgrid1.VisibleRowCount/2)>0 then
          StringGrid1.TopRow:=Round(i-Stringgrid1.VisibleRowCount/2);
      end;
    end
    else
    begin
      if Pos(strToFind,StringGrid1.Cells[nCol,i])>0 then
      begin
        resultPoint.X:=nCol;
        resultPoint.Y:=i;
        result:=resultPoint;
      end;
    end;
    i:=i+1;
  end;
  result:=resultPoint;
end;





procedure TForm9.Button1Click(Sender: TObject);
begin
  StringGrid1.Visible:=false;
  StringGrid1.Cells[1,0] := 'A';
  StringGrid1.ColWidths[1]:=100;
  StringGrid1.Cells[2,0] := 'B';
  StringGrid1.Cells[3,0] := 'C';
  StringGrid1.Cells[4,0] := 'D';
  StringGrid1.Cells[5,0] := 'E';
  StringGrid1.Cells[6,0] := 'F';
  updateLineNumber;
  Screen.Cursors[crCursorCross] := LoadCursorFromFile('cursor\CROSS.CUR');
  Screen.Cursors[crCursorRight] := LoadCursorFromFile('cursor\RIGHT.CUR');
  Screen.Cursors[crCursorDown] := LoadCursorFromFile('cursor\DOWN.CUR');
  StringGrid1.Cursor:= crCursorCross;
  StringGrid1.Visible:=true;
end;

procedure TForm9.FormCreate(Sender: TObject);
begin
stringgrid1.Visible:=false;
stringgrid1.Visible:=true;

end;



procedure TForm9.SpeedButton1Click(Sender: TObject);
var nom_produit:string;
    i:integer;
    prix:string;
begin
i:=0;
verific:=1;
StringGrid1.Visible:=false;

with datamodule10.ADOTable_produit do
begin
datamodule10.ADOTable_produit.First;
while not (datamodule10.ADOTable_produit.Eof) do
begin
datamodule10.ADOTable_produit.Next;
nom_produit:= datamodule10.ADOTable_produit.Fields[3].AsString;
prix:=datamodule10.ADOTable_produit.Fields[4].AsString;
stringGrid1.Cells[1,i]:=nom_produit;
stringGrid1.Cells[2,i]:=prix;
stringgrid1.RowCount:=i;
i:=i+1;
end;
end;
StringGrid1.Cells[1,0]:='Produit';
StringGrid1.Cells[2,0]:='Prix_unit�';
StringGrid1.Cells[3,0]:='Stock_Initial';
StringGrid1.Cells[4,0]:='Qte_Totale';
StringGrid1.Cells[5,0]:='Montant_Total';
StringGrid1.Cells[6,0]:='Qte_Espece';
StringGrid1.Cells[7,0]:='Montant';
StringGrid1.Cells[8,0]:='Qte_Ch�que';
StringGrid1.Cells[9,0]:='Montant';
StringGrid1.Cells[10,0]:='Qte_CT14';
StringGrid1.Cells[11,0]:='Montant';
StringGrid1.Cells[12,0]:='DME';
StringGrid1.Cells[13,0]:='Montant';
StringGrid1.Cells[14,0]:='Qte_gratuit';
StringGrid1.Cells[15,0]:='Motif';
StringGrid1.Cells[16,0]:='Retour';
StringGrid1.Cells[17,0]:='Stock_final';
stringgrid1.Cells[1,i-1]:='Total';
stringgrid1.Cells[2,i-1]:='0';
stringgrid1.Cells[3,i-1]:='0';

stringgrid1.Cells[4,i-1]:='0';
stringgrid1.Cells[5,i-1]:='0';
stringgrid1.Cells[6,i-1]:='0';
stringgrid1.Cells[7,i-1]:='0';

stringgrid1.Cells[8,i-1]:='0';
stringgrid1.Cells[9,i-1]:='0';
stringgrid1.Cells[10,i-1]:='0';
stringgrid1.Cells[11,i-1]:='0';

stringgrid1.Cells[12,i-1]:='0';
stringgrid1.Cells[13,i-1]:='0';
stringgrid1.Cells[14,i-1]:='0';
stringgrid1.Cells[16,i-1]:='0';
stringgrid1.Cells[17,i-1]:='0';

StringGrid1.ColWidths[1]:=150;
stringgrid1.RowCount:=i;

updateLineNumber;
Screen.Cursors[crCursorCross] := LoadCursorFromFile('cursor\CROSS.CUR');
Screen.Cursors[crCursorRight] := LoadCursorFromFile('cursor\RIGHT.CUR');
Screen.Cursors[crCursorDown] := LoadCursorFromFile('cursor\DOWN.CUR');
StringGrid1.Cursor:= crCursorCross;
StringGrid1.Visible:=true;
speedbutton2.Visible:=true;
//SpeedButton1.Visible:=false;

end;

procedure TForm9.StringGrid1SelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
var i:integer;
    j:integer;
    unite:integer;
    qte:integer;
    qte1:string;
    h :integer;
begin
  if Arow <> 0 then
 unite:=strtoint(stringgrid1.cells[2,Arow]);
if (Acol=5) then
begin
  if Arow <> 0 then
  begin
  if (Stringgrid1.Cells[4,Arow]<>'') then
  begin
  qte:=strtoint(stringgrid1.cells[4,Arow]);
  stringgrid1.cells[5,Arow]:=IntToStr(unite*qte);
  end;
  end;
  end;
if (Acol=7) then
begin
  if Arow <> 0 then
  begin
  if (Stringgrid1.Cells[6,Arow]<>'') then
  begin
  qte:=strtoint(stringgrid1.cells[6,Arow]);
  stringgrid1.cells[7,Arow]:=IntToStr(unite*qte);
  end;
  end;
  end;
if (Acol=9) then
begin
if Arow <> 0 then
  begin
  if (Stringgrid1.Cells[8,Arow]<>'') then
  begin
  qte:=strtoint(stringgrid1.cells[8,Arow]);
  stringgrid1.cells[9,Arow]:=IntToStr(unite*qte);
  end;
  end;
  end;

if (Acol=11) then
begin
  if Arow <> 0 then
    begin
  if (Stringgrid1.Cells[10,Arow]<>'') then
  begin
  qte:=strtoint(stringgrid1.cells[10,Arow]);
  stringgrid1.cells[11,Arow]:=IntToStr(unite*qte);
  end;
  end;
  end;

if (Acol=13) then
begin
  if Arow <> 0 then
    begin

  if (Stringgrid1.Cells[12,Arow]<>'') then
  begin
  qte:=strtoint(stringgrid1.cells[12,Arow]);
  stringgrid1.cells[13,Arow]:=IntToStr(unite*qte);
  end;
  end;
  end;
if (Arow=stringgrid1.RowCount-1) and (Acol=2) then
begin
  stringgrid1.cells[2,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
        h:=h+strtoint(stringgrid1.Cells[2,j]);
      end;
      stringgrid1.cells[2,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;
if (Arow=stringgrid1.RowCount-1) and (Acol=3) then
begin
  stringgrid1.cells[3,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[3,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[3,j]);
    end;
    end;
      stringgrid1.cells[3,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=4) then
begin
  stringgrid1.cells[4,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[4,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[4,j]);
    end;
    end;
      stringgrid1.cells[4,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=5) then
begin
  stringgrid1.cells[5,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[5,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[5,j]);
    end;
    end;
      stringgrid1.cells[5,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;
if (Arow=stringgrid1.RowCount-1) and (Acol=6) then
begin
  stringgrid1.cells[6,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[6,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[6,j]);
    end;
    end;
      stringgrid1.cells[6,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;


if (Arow=stringgrid1.RowCount-1) and (Acol=7) then
begin
  stringgrid1.cells[7,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[7,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[7,j]);
    end;
    end;
      stringgrid1.cells[7,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=8) then
begin
  stringgrid1.cells[8,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[8,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[8,j]);
    end;
    end;
      stringgrid1.cells[8,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=9) then
begin
  stringgrid1.cells[9,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[9,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[9,j]);
    end;
    end;
      stringgrid1.cells[9,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=10) then
begin
  stringgrid1.cells[10,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[10,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[10,j]);
    end;
    end;
      stringgrid1.cells[10,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=11) then
begin
  stringgrid1.cells[11,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[11,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[11,j]);
    end;
    end;
      stringgrid1.cells[11,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=12) then
begin
  stringgrid1.cells[12,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[12,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[12,j]);
    end;
    end;
      stringgrid1.cells[12,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=13) then
begin
  stringgrid1.cells[13,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[13,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[13,j]);
    end;
    end;
      stringgrid1.cells[13,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=14) then
begin
  stringgrid1.cells[14,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[14,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[14,j]);
    end;
    end;
      stringgrid1.cells[14,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;

if (Arow=stringgrid1.RowCount-1) and (Acol=16) then
begin
  stringgrid1.cells[16,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[16,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[16,j]);
    end;
    end;
      stringgrid1.cells[16,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;


if (Arow=stringgrid1.RowCount-1) and (Acol=17) then
begin
  stringgrid1.cells[17,stringgrid1.RowCount-1]:='0';
  if (Stringgrid1.Cells[Acol,Arow]<>'') then
    begin
      for j:=1 to stringgrid1.RowCount-1 do
      begin
     if (Stringgrid1.Cells[17,j]<>'') then
    begin
        h:=h+strtoint(stringgrid1.Cells[17,j]);
    end;
    end;
      stringgrid1.cells[17,stringgrid1.RowCount-1]:=inttostr(h);
    end;
end;



end;
procedure TForm9.SpeedButton2Click(Sender: TObject);
var j,id_prod:integer;
begin
verific1:=1;
if StringGrid1.Visible=false  then
 ShowMessage('Erreur !! vous devez lancer la saisie en cliquant sur demarrer')
else
begin
if MessageDlg('Etes-vous s�r de vouloir Terminer la saisie ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Madate:=now;
    with datamodule10.ADOTable_date do
    begin
    append;
    datamodule10.ADOTable_date.FieldByName('Val_date').Value:=Madate;
    post;
    end;
  Stringgrid1.Visible:=false;
  for j:=1 to Stringgrid1.rowcount-2 do
    begin
      with datamodule10.ADOTable_produit do
      begin
      datamodule10.ADOTable_produit.First;
      while not (datamodule10.ADOTable_produit.Eof) do
      begin
        datamodule10.ADOTable_produit.Next;
        if datamodule10.ADOTable_produit.FieldByName('Nom_produit').AsString=stringgrid1.Cells[1,j] then
        id_prod:=datamodule10.ADOTable_produit.FieldByName('ID_produit').Asinteger;
      end;
      end;

  if (stringgrid1.Cells[6,j]<>'') or (stringgrid1.Cells[8,j]<>'') or (stringgrid1.Cells[10,j]<>'')  or (stringgrid1.Cells[12,j]<>'')  or (stringgrid1.Cells[14,j]<>'')then
  begin
  if (stringgrid1.Cells[6,j]='') then stringgrid1.cells[6,j]:='0';
  if (stringgrid1.Cells[8,j]='') then stringgrid1.cells[8,j]:='0';
  if (stringgrid1.Cells[10,j]='') then stringgrid1.cells[10,j]:='0';
  if (stringgrid1.Cells[12,j]='') then stringgrid1.cells[12,j]:='0';
  if (stringgrid1.Cells[14,j]='') then stringgrid1.cells[14,j]:='0';


  with datamodule10.ADOTable_vente do
  begin
     Append;
    datamodule10.ADOTable_vente.FieldByName('prix_unit�').AsString:=stringgrid1.Cells[2,j];
    datamodule10.ADOTable_vente.FieldByName('qte_esp').Asinteger:=strtoint(stringgrid1.cells[6,j]);
    datamodule10.ADOTable_vente.FieldByName('qte_cheq').Asinteger:=strtoint(stringgrid1.cells[8,j]);
    datamodule10.ADOTable_vente.FieldByName('qte_ct14').Asinteger:=strtoint(stringgrid1.cells[10,j]);
    datamodule10.ADOTable_vente.FieldByName('qte_dme').Asinteger:=strtoint(stringgrid1.cells[12,j]);
    datamodule10.ADOTable_vente.FieldByName('qte_gratuit').Asinteger:=strtoint(stringgrid1.cells[14,j]);
    datamodule10.ADOTable_vente.FieldByName('motif').AsString:=StringGrid1.Cells[15,j];
    datamodule10.ADOTable_vente.FieldByName('Val_date').AsDateTime:=MaDate;
    datamodule10.ADOTable_vente.FieldByName('ID_produit').Asinteger:=id_prod;

   post;
  end;
  end;

  if (stringgrid1.Cells[3,j]<>'') or (stringgrid1.Cells[17,j]<>'') or (stringgrid1.Cells[16,j]<>'')  then
  begin
  if (stringgrid1.Cells[3,j]='') then stringgrid1.cells[3,j]:='0';
  if (stringgrid1.Cells[17,j]='') then stringgrid1.cells[17,j]:='0';
  if (stringgrid1.Cells[16,j]='') then stringgrid1.cells[16,j]:='0';
  with datamodule10.ADOTable_stock do
  begin
     Append;
    datamodule10.ADOTable_stock.FieldByName('SI').Asinteger:=strtoint(stringgrid1.cells[3,j]);
    datamodule10.ADOTable_stock.FieldByName('SF').Asinteger:=strtoint(stringgrid1.cells[17,j]);
    datamodule10.ADOTable_stock.FieldByName('Retour').Asinteger:=strtoint(stringgrid1.cells[16,j]);
    datamodule10.ADOTable_stock.FieldByName('Val_date').AsDateTime:=MaDate;
    datamodule10.ADOTable_stock.FieldByName('ID_produit').Asinteger:=id_prod;
    post;
  end;
  end;

  end;
end;
//SpeedButton2.Visible:=false;
end;
end;
procedure TForm9.SpeedButton3Click(Sender: TObject);
var FichTest: TextFile;
    SaveDialog1:TSaveDialog;
  begin
if (verific <> 1) then
begin
    ShowMessage('Erreur vous devez lancer la saisie en cliquant sur demarrer');
end;
if (verific1 <> 1 ) then ShowMessage('Erreur vous devez valider la saisie en cliquant sur terminer');

if (verific=1) and (verific1=1) then
begin
  SaveDialog1 := TSaveDialog.Create(self);
 SaveDialog1.InitialDir := GetCurrentDir;
 if SaveDialog1.Execute
  then
  begin
  ShowMessage('File : '+SaveDialog1.FileName);
  sauveGrille(SaveDialog1.FileName,StringGrid1);
  end
  else ShowMessage('Open file was cancelled');
   // Free up the dialog
  SaveDialog1.Free;
  end;
  end;
Procedure tform9.SauveGrille(NomFichier:String;Grille:TStringGrid);
Var Ini:TIniFile;
    i,j:Integer;
    begin
  Ini:=TIniFile.Create(NomFichier);
  With Grille Do Try
    Ini.WriteInteger('GENERAL','RowCount',RowCount);
    Ini.WriteInteger('GENERAL','ColCount',ColCount);
    For i:=0 To ColCount-1 Do For j:=0 To RowCount-1 Do
      Ini.WriteString(IntToStr(i),IntToStr(j),Cells[i,j]);
   Finally
   Ini.Free;
  end;
  End;





procedure TForm9.SpeedButton4Click(Sender: TObject);
var
    OleApplication :variant;
    OleWorkBook    :variant;
    i,j:integer;
    chaine:string;
    ch:integer;

begin
if (verific <> 1) then
begin
    ShowMessage('Erreur vous devez lancer la saisie en cliquant sur demarrer');
end;
if (verific1 <> 1 ) then ShowMessage('Erreur vous devez valider la saisie en cliquant sur terminer');

if (verific=1) and (verific1=1) then
begin
    OleApplication := CreateOleObject('Excel.Application');// cr�ation du lien OLE pour la classe r�f�renc� par Excel dans la base de registre "Excel.Application"
    OleApplication.visible:=True; // pour rendre Excel visible
    OleWorkBook:=OleApplication.Workbooks.Add; // pour cr�er un  nouveau document
   
    OleApplication.Range['A1'].select;
    OleApplication.Range['A1'].Columns.Autofit;;
    OleApplication.Range['A1'].rows.Autofit;;

    OleApplication.Selection.Formula:='produit';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Font.:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['B1'].select;
    OleApplication.Selection.Formula:='prix_unit�';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['B1'].Columns.Autofit;;
    OleApplication.Range['B1'].rows.Autofit;;
    OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['C1'].select;
    OleApplication.Selection.Formula:='Stock_Initial';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['C1'].Columns.Autofit;;
    OleApplication.Range['C1'].rows.Autofit;;
    OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['D1'].select;
    OleApplication.Selection.Formula:='QTE_Totale';
     OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['D1'].Columns.Autofit;;
    OleApplication.Range['D1'].rows.Autofit;;
     OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;


    OleApplication.Range['E1'].select;
    OleApplication.Selection.Formula:='Montant_total';
     OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['E1'].Columns.Autofit;;
    OleApplication.Range['E1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

      OleApplication.Range['F1'].select;
      OleApplication.Selection.Formula:='QTE_Esp�ces';
      OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['F1'].Columns.Autofit;;
    OleApplication.Range['F1'].rows.Autofit;;

 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['G1'].select;
    OleApplication.Selection.Formula:='Montant_Esp�ces';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
        OleApplication.Range['G1'].Columns.Autofit;;
    OleApplication.Range['G1'].rows.Autofit;;

 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['H1'].select;
    OleApplication.Selection.Formula:='QTE_Ch�ques';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['H1'].Columns.Autofit;;
    OleApplication.Range['H1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;



    OleApplication.Range['I1'].select;
    OleApplication.Selection.Formula:='Montant_Ch�ques';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['I1'].Columns.Autofit;;
    OleApplication.Range['I1'].rows.Autofit;;
     OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;



    OleApplication.Range['J1'].select;
    OleApplication.Selection.Formula:='QTE_CT14';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['J1'].Columns.Autofit;;
    OleApplication.Range['J1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;



    OleApplication.Range['K1'].select;
    OleApplication.Selection.Formula:='Montant_CT14';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['K1'].Columns.Autofit;;
    OleApplication.Range['K1'].rows.Autofit;;
     OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;



    OleApplication.Range['L1'].select;
    OleApplication.Selection.Formula:='DME';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['L1'].Columns.Autofit;;
    OleApplication.Range['L1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['M1'].select;
    OleApplication.Selection.Formula:='Montant';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['M1'].Columns.Autofit;;
    OleApplication.Range['M1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;


    OleApplication.Range['N1'].select;
    OleApplication.Selection.Formula:='QTE_Gratuit';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['N1'].Columns.Autofit;;
    OleApplication.Range['N1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;

    OleApplication.Range['O1'].select;
    OleApplication.Selection.Formula:='Motif';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['O1'].Columns.Autofit;;
    OleApplication.Range['O1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;


    OleApplication.Range['P1'].select;
    OleApplication.Selection.Formula:='Retour';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['P1'].Columns.Autofit;;
    OleApplication.Range['P1'].rows.Autofit;;
 OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;


    OleApplication.Range['Q1'].select;
    OleApplication.Selection.Formula:='Stock_Final';
    OleApplication.Selection.horizontalalignment:=-4108;
    OleApplication.Selection.Interior.Color := clGray;
    OleApplication.Range['Q1'].Columns.Autofit;;
    OleApplication.Range['Q1'].rows.Autofit;;
     OleApplication.Selection.Font.Color:=clgreen;
    OleApplication.Selection.Interior.Color := clsilver;



   ch:=recuperer_plus_grande_chaine(1);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['A'+inttostr(j+2)].select;

    OleApplication.ActiveCell.Formula:=stringgrid1.cells[1,j+1];
    // OleApplication.Selection.Font.Color:=cllime;
    OleApplication.Selection.Interior.Color := cllime;


    if(j+1=ch) then
    begin
    OleApplication.Range['A'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['A'+inttostr(j+2)].rows.Autofit;;
    end;
    end;


   ch:=recuperer_plus_grande_chaine(2);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['B'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[2,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['B'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['B'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(3);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['C'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[3,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['C'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['C'+inttostr(j+2)].rows.Autofit;;
    end;
   end;


      ch:=recuperer_plus_grande_chaine(4);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['D'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[4,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['D'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['D'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(5);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['E'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[5,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['E'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['E'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(6);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['F'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[6,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['F'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['F'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(7);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['G'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[7,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['G'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['G'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(8);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['H'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[8,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['H'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['H'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(9);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['I'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[9,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['I'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['I'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(10);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['J'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[10,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['J'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['J'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(11);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['K'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[11,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['K'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['K'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(12);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['L'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[12,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['L'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['L'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

      ch:=recuperer_plus_grande_chaine(13);
   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['M'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[13,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['M'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['M'+inttostr(j+2)].rows.Autofit;;
    end;
   end;
ch:=recuperer_plus_grande_chaine(14);

   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['N'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[14,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['N'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['N'+inttostr(j+2)].rows.Autofit;;
    end;
   end;

   ch:=recuperer_plus_grande_chaine(15);

   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['O'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[15,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['O'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['O'+inttostr(j+2)].rows.Autofit;;
    end;
   end;


   ch:=recuperer_plus_grande_chaine(16);

   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['P'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[16,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['P'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['P'+inttostr(j+2)].rows.Autofit;;
    end;
   end;


   ch:=recuperer_plus_grande_chaine(17);

   For  j:=0 To stringgrid1.RowCount-2 Do
   begin
    OleApplication.Range['Q'+inttostr(j+2)].select;
    OleApplication.ActiveCell.Formula:=stringgrid1.cells[17,j+1];
    if(j+1=ch) then
    begin
    OleApplication.Range['Q'+inttostr(j+2)].Columns.Autofit;;
    OleApplication.Range['Q'+inttostr(j+2)].rows.Autofit;;
    end;
   end;




    //try OleApplication.Quit;
    //except end;


end;
end;

procedure TForm9.SpeedButton5Click(Sender: TObject);
begin
close();
end;
function Tform9.recuperer_plus_grande_chaine(col:integer):integer;
var  s:string;
    ch:string;
    j:integer;
begin
   s:=stringgrid1.Cells[col,0];
   for j:=0 to stringgrid1.RowCount-1 do
   begin
   ch:=stringgrid1.Cells[col,j+1];
   if Length(s)< Length(ch) then
   begin
    s:=Stringgrid1.Cells[1,j+1];
    result:=j+1;
   end;

   end;
end;

end.
