VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form frmSearch 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Find"
   ClientHeight    =   5595
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   6615
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5595
   ScaleWidth      =   6615
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox PicStatus 
      AutoRedraw      =   -1  'True
      Height          =   255
      Left            =   120
      ScaleHeight     =   13
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   421
      TabIndex        =   18
      Top             =   5280
      Width           =   6375
   End
   Begin MSComctlLib.ImageList ImageList1 
      Left            =   1560
      Top             =   3600
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   393216
      BeginProperty Images {2C247F25-8591-11D1-B16A-00C0F0283628} 
         NumListImages   =   4
         BeginProperty ListImage1 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmSearch.frx":0000
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmSearch.frx":059A
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmSearch.frx":06F4
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {2C247F27-8591-11D1-B16A-00C0F0283628} 
            Picture         =   "frmSearch.frx":084E
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin MSComctlLib.ListView LVfound 
      Height          =   2055
      Left            =   120
      TabIndex        =   16
      Top             =   3120
      Width           =   6375
      _ExtentX        =   11245
      _ExtentY        =   3625
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      HideColumnHeaders=   -1  'True
      _Version        =   393217
      SmallIcons      =   "ImageList1"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   2
      BeginProperty ColumnHeader(1) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         Object.Width           =   10583
      EndProperty
      BeginProperty ColumnHeader(2) {BDD1F052-858B-11D1-B16A-00C0F0283628} 
         SubItemIndex    =   1
         Object.Width           =   0
      EndProperty
   End
   Begin MSComCtl2.Animation Ani 
      Height          =   855
      Left            =   5400
      TabIndex        =   15
      Top             =   240
      Width           =   975
      _ExtentX        =   1720
      _ExtentY        =   1508
      _Version        =   393216
      FullWidth       =   65
      FullHeight      =   57
   End
   Begin VB.ComboBox cboFind 
      Height          =   315
      Left            =   960
      TabIndex        =   14
      Top             =   120
      Width           =   3975
   End
   Begin VB.CommandButton cmdFind 
      Caption         =   "Find"
      Enabled         =   0   'False
      Height          =   375
      Left            =   5160
      TabIndex        =   12
      Top             =   1920
      Width           =   1335
   End
   Begin VB.CommandButton cmdCancel 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   11
      Top             =   2400
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Location"
      Height          =   2175
      Left            =   120
      TabIndex        =   5
      Top             =   600
      Width           =   2895
      Begin VB.CheckBox ChData 
         Caption         =   "Data"
         Height          =   255
         Left            =   240
         TabIndex        =   9
         Top             =   1680
         Value           =   1  'Checked
         Width           =   1695
      End
      Begin VB.CheckBox ChValues 
         Caption         =   "Values"
         Height          =   255
         Left            =   240
         TabIndex        =   8
         Top             =   1320
         Value           =   1  'Checked
         Width           =   1695
      End
      Begin VB.CheckBox ChKeys 
         Caption         =   "Keys"
         Height          =   255
         Left            =   240
         TabIndex        =   7
         Top             =   960
         Value           =   1  'Checked
         Width           =   1695
      End
      Begin VB.ComboBox cboRoot 
         Height          =   315
         Left            =   240
         Style           =   2  'Dropdown List
         TabIndex        =   6
         Top             =   360
         Width           =   2415
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Search Mode"
      Height          =   2175
      Left            =   3120
      TabIndex        =   0
      Top             =   600
      Width           =   1815
      Begin VB.CheckBox ChCase 
         Caption         =   "Match Case"
         Height          =   255
         Left            =   240
         TabIndex        =   10
         Top             =   1800
         Width           =   1215
      End
      Begin VB.OptionButton Option4 
         Caption         =   "Exact"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   1440
         Width           =   855
      End
      Begin VB.OptionButton Option3 
         Caption         =   "Right"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   1080
         Width           =   735
      End
      Begin VB.OptionButton Option2 
         Caption         =   "Left"
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   720
         Width           =   735
      End
      Begin VB.OptionButton Option1 
         Caption         =   "Any"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   360
         Value           =   -1  'True
         Width           =   735
      End
   End
   Begin VB.Label Label2 
      Caption         =   "Results :"
      Height          =   255
      Left            =   120
      TabIndex        =   17
      Top             =   2880
      Width           =   1215
   End
   Begin VB.Label Label1 
      Caption         =   "Find :"
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   180
      Width           =   495
   End
End
Attribute VB_Name = "frmSearch"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim theBigCancel As Boolean
Dim Searching As Boolean
Dim lastSearchArea As Long
Dim lastCase As Long
Dim lastMode As Long
Dim lastKey As Long
Dim lastValue As Long
Dim lastdata As Long
Private Sub cboFind_Change()
    If Len(cboFind.Text) = 0 Then
        cmdFind.Enabled = False
    Else
        cmdFind.Enabled = True
    End If
End Sub

Private Sub cboFind_Click()
    If Len(cboFind.Text) = 0 Then
        cmdFind.Enabled = False
    Else
        cmdFind.Enabled = True
    End If
End Sub

Private Sub cboFind_KeyPress(KeyAscii As Integer)
    If KeyAscii = 13 Then
        If cboFind.Text <> "" Then cmdFind_Click
    End If
End Sub

Private Sub cboFind_KeyUp(KeyCode As Integer, Shift As Integer)
    Dim z As Long, ll As Long
    Select Case KeyCode
    Case vbKeyBack, vbKeyDelete, vbKeyLeft, vbKeyRight
    
    Case Else
        If cboFind.ListCount > 0 Then
            For z = 0 To cboFind.ListCount - 1
                If LCase(Left(cboFind.List(z), Len(cboFind.Text))) = LCase(cboFind.Text) Then
                    If z <> cboFind.ListIndex Then
                        ll = Len(cboFind.Text)
                        cboFind.ListIndex = z
                        cboFind.SelStart = ll
                        cboFind.SelLength = Len(cboFind.Text) - ll
                        Exit For
                    End If
                End If
            Next
        End If
    End Select
End Sub

Private Sub cmdCancel_Click()
    Ani.Stop
    Ani.Close
    If Not Searching Then
        Unload Me
        Exit Sub
    End If
    theBigCancel = True
    
End Sub

Private Sub cmdFind_Click()
    Dim temp As String, SearchRoot As Long, z As Long, found As Boolean
    For z = 0 To cboFind.ListCount - 1
        If LCase(cboFind.List(z)) = LCase(cboFind.Text) Then
            found = True
            Exit For
        End If
    Next
    If Not found Then cboFind.AddItem cboFind.Text
    lastSearchArea = cboRoot.ListIndex
    lastCase = ChCase.Value
    If Option1.Value Then lastMode = 1
    If Option2.Value Then lastMode = 2
    If Option3.Value Then lastMode = 3
    If Option4.Value Then lastMode = 4
    lastKey = ChKeys.Value
    lastValue = ChValues.Value
    lastdata = ChData.Value
    theBigCancel = False
    Searching = True
    LVfound.ListItems.Clear
    temp = GetWinDir + "\FINDFILE.AVI"
    If FileExists(temp) Then
        Ani.Open temp
        Ani.Play
    End If
    SearchRoot = GetRootHandle(cboRoot.Text)
    If cboRoot.ListIndex <> 0 Then
        DoEvents
        Search SearchRoot, ""
    Else
        For z = 1 To cboRoot.ListCount - 1
            DoEvents
            If theBigCancel Then Exit For
            SearchRoot = GetRootHandle(cboRoot.List(z))
            Search SearchRoot, ""
        Next
    End If
    Ani.Stop
    Ani.Close
    If LVfound.ListItems.count = 0 Then LVfound.ListItems.Add , , "Nothing to show", , 4
    Searching = False
End Sub

Private Sub Form_Load()
    Dim z As Long, temp As String
    Me.Icon = fMainForm.Icon
    LVfound.ListItems.Add , , "Nothing to show", , 4
    cboRoot.AddItem "My Computer"
    'Different OS's use different Hkeys
    'Ask Registry if it has any keys - if it does then Hkey is present
    If CountAllKeys(HKEY_CLASSES_ROOT) Then cboRoot.AddItem "HKEY_CLASSES_ROOT"
    If CountAllKeys(HKEY_CURRENT_USER) Then cboRoot.AddItem "HKEY_CURRENT_USER"
    If CountAllKeys(HKEY_DYN_DATA) Then cboRoot.AddItem "HKEY_DYN_DATA"
    If CountAllKeys(HKEY_LOCAL_MACHINE) Then cboRoot.AddItem "HKEY_LOCAL_MACHINE"
    If CountAllKeys(HKEY_PERFORMANCE_DATA) Then cboRoot.AddItem "HKEY_PERFORMANCE_DATA"
    If CountAllKeys(HKEY_USERS) Then cboRoot.AddItem "HKEY_USERS"
    If CountAllKeys(HKEY_CURRENT_CONFIG) Then cboRoot.AddItem "HKEY_CURRENT_CONFIG"
    cboRoot.ListIndex = 0
    For z = 0 To 19
        temp = GetSetting("PSST SOFTWARE\" + App.Title, "Search", Trim(Str(z)), "")
        If temp <> "" Then cboFind.AddItem temp
    Next
    temp = GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastSearchArea", "0")
    If Val(temp) < cboRoot.ListCount Then cboRoot.ListIndex = Val(temp)
    lastMode = Val(GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastMode", "1"))
    Select Case lastMode
    Case 1: Option1.Value = True
    Case 2: Option2.Value = True
    Case 3: Option3.Value = True
    Case 4: Option4.Value = True
    Case Else
        Option1.Value = True
    End Select
    'setup search criteria based on last search
    ChCase.Value = Val(GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastCase", "1"))
    ChKeys.Value = Val(GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastKey", "1"))
    ChValues.Value = Val(GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastValue", "1"))
    ChData.Value = Val(GetSetting("PSST SOFTWARE\" + App.Title, "Search", "lastdata", "1"))

End Sub

Private Sub Search(mHkey As Long, mPath As String)
    Dim count As Long, tmpStr() As String, tmpValStr() As String, z As Long, zx As Long
    Dim tmpType() As Long, temp As String, tmpPath As String
    Dim tmpRoot As String, lItem As ListItem
    tmpPath = mPath
    tmpRoot = GetRootText(mHkey)
    PicStatus.CurrentX = 5
    PicStatus.CurrentY = 1
    If tmpPath <> "" Then
        tmpPath = tmpPath + "\"
        PicStatus.Cls
        PicStatus.Print tmpRoot + "\" + PathOnly(tmpPath)
    Else
        PicStatus.Cls
        PicStatus.Print tmpRoot
    End If
    tmpStr = GetAllKeys(mHkey, mPath)
    DoEvents
    If tmpStr(0) <> "  " Then
        For z = 0 To UBound(tmpStr)
            If theBigCancel Then Exit Sub
            If tmpStr(z) <> "" Then
                If ChKeys.Value = 1 Then
                    If VerifyPattern(tmpPath + tmpStr(z)) Then
                        Set lItem = LVfound.ListItems.Add(, , mPath & "\" + tmpStr(z), , 1)
                        lItem.SubItems(1) = tmpRoot + "\" + mPath & "\" + tmpStr(z)
                    End If
                End If
                Search mHkey, tmpPath + tmpStr(z)
            End If
        Next
    End If
    If ChValues.Value = 1 Or ChData.Value = 1 Then
        If theBigCancel Then Exit Sub
        DoEvents
        tmpValStr = GetAllValues(mHkey, mPath, True, tmpType)
        If tmpValStr(0) <> "  " Then
            For zx = 0 To UBound(tmpValStr)
                If theBigCancel Then Exit Sub
                If tmpValStr(zx) <> "" Then
                    If ChValues.Value = 1 Then
                        If VerifyPattern(tmpValStr(zx)) Then
                            Set lItem = LVfound.ListItems.Add(, , mPath & "\" + tmpValStr(zx), , getIco(tmpType(zx)))
                            lItem.SubItems(1) = tmpRoot + "\" + mPath & "\" + tmpValStr(zx)
                        End If
                    End If
                    If ChData.Value = 1 Then
                        DoEvents
                        If tmpType(zx) = 1 Then
                            temp = GetSettingString(mHkey, mPath, tmpValStr(zx), "")
                            If VerifyPattern(temp) Then
                                Set lItem = LVfound.ListItems.Add(, , mPath & "\" + tmpValStr(zx), , 2)
                                lItem.SubItems(1) = tmpRoot + "\" + mPath & "\" + tmpValStr(zx)
                            End If
                        End If
                    End If
                End If
            Next
        End If
    End If
    DoEvents
End Sub
Public Function VerifyPattern(mPattern As String) As Boolean
    'Make sure found item fits our search criteria
    Dim strResult As String
    Dim strSearch As String
    strSearch = mPattern
    strResult = cboFind.Text
    DoEvents
    If ChCase.Value = 0 Then
        strResult = LCase(strResult)
        strSearch = LCase(strSearch)
    End If
    If Option1.Value Then
        If InStr(strSearch, strResult) Then VerifyPattern = True
    ElseIf Option2.Value Then
        If Left(strSearch, Len(strResult)) = strResult Then VerifyPattern = True
    ElseIf Option3.Value Then
        If Right(strSearch, Len(strResult)) = strResult Then VerifyPattern = True
    ElseIf Option4.Value Then
        If strSearch = strResult Then VerifyPattern = True
    End If
End Function

Public Function getIco(mType As Long) As Long
    Select Case mType
        Case 1, 2
            getIco = 2
        Case 3, 4
            getIco = 3
    End Select
End Function

Private Sub Form_Unload(Cancel As Integer)
    Dim z As Long
    theBigCancel = True
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "Dun", "Dun"
    DeleteSetting "PSST SOFTWARE\" + App.Title, "Search"
    If cboFind.ListCount > 0 Then
        For z = cboFind.ListCount To 0 Step -1
            SaveSetting "PSST SOFTWARE\" + App.Title, "Search", Trim(Str(z)), cboFind.List(z)
            If z = 19 Then Exit For
        Next
    End If
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastSearchArea", Trim(Str(lastSearchArea))
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastMode", Trim(Str(lastMode))
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastCase", Trim(Str(lastCase))
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastKey", Trim(Str(lastKey))
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastValue", Trim(Str(lastValue))
    SaveSetting "PSST SOFTWARE\" + App.Title, "Search", "lastdata", Trim(Str(lastdata))
End Sub
Private Sub LVfound_MouseUp(Button As Integer, Shift As Integer, x As Single, y As Single)
    'Moves the mainform display to show selected item
    Dim temp As String, z As Long, zx As Long, bud As Collection, cnt As Long
    Dim item As ListItem
    Set item = LVfound.HitTest(x, y)
    If item Is Nothing Then Exit Sub
    Set bud = New Collection
    temp = item.SubItems(1)
    z = -1
    Do Until z = 0
        z = InStr(1, temp, "\")
        If z <> 0 Then
            temp = PathOnly(temp)
            bud.Add temp + "\"
        End If
    Loop
    If bud.count > 0 Then
        cnt = 1
        For z = bud.count To 1 Step -1
            For zx = cnt To fMainForm.TV.Nodes.count
                temp = bud(z)
                If fMainForm.TV.Nodes(zx).Key = bud(z) Then
                    fMainForm.TV.Nodes(zx).Expanded = True
                    cnt = zx
                    Exit For
                End If
            Next
        Next
        If item.SmallIcon <> 1 Then
            For zx = cnt To fMainForm.TV.Nodes.count
                If fMainForm.TV.Nodes(zx).Key = PathOnly(item.SubItems(1)) + "\" Then
                    fMainForm.TV.Nodes(zx).Selected = True
                    fMainForm.TV.Nodes(zx).EnsureVisible
                    fMainForm.NodeClick fMainForm.TV.Nodes(zx)
                    For z = 1 To fMainForm.LV.ListItems.count
                        If fMainForm.LV.ListItems(z).Text = FileOnly(item.SubItems(1)) Then
                            fMainForm.LV.ListItems(z).Selected = True
                            fMainForm.LV.ListItems(z).EnsureVisible
                            fMainForm.LV.SetFocus
                            fMainForm.SetFocus
                            Exit For
                        End If
                    Next z
                    Exit For
                End If
            Next
        Else
            For zx = cnt To fMainForm.TV.Nodes.count
                If fMainForm.TV.Nodes(zx).Key = item.SubItems(1) + "\" Then
                    fMainForm.TV.Nodes(zx).Selected = True
                    fMainForm.TV.Nodes(zx).EnsureVisible
                    fMainForm.NodeClick fMainForm.TV.Nodes(zx)
                    fMainForm.TV.SetFocus
                    fMainForm.SetFocus
                    Exit For
                End If
            Next
        End If
        
    End If

End Sub
