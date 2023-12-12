Anexo 3: O programa VBA (Word2000) MyBabel21:

Public mConium As String
Public autor As String
Public fimdeciclo As Integer
Public maximo As Integer
Public pmConium As String
Public matrix As Integer
Public lfimdeciclo As Integer
Public matriz As String
Public maisum As Integer
Public mPalavra As String
Public mconiumprimeiro As String
Public mString As String
Public CharAutor As String
Public CharTransf As String
Public ultimapalavra As String
Public IntactomCOnium As String
Public fc As String
Public grupo As String


Sub MyBabel21()
Documents.Open FileName:="C:\MyBabel.doc", ConfirmConversions:=False, _
        ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
        PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
        WritePasswordTemplate:="", Format:=wdOpenFormatAuto

versao = "21"
continuar = "S"
mconiumprimeiro = mConium
If mconiumprimeiro = "??-??-" Or mconiumprimeiro = "??-??-??-" Or mconiumprimeiro = "??-??-??-??-" Then
    Exit Sub ' sendo este conjunto de dois passar adiante
End If
Call PreAutor
While continuar = "S" Or continuar = "s"
    autor = "falashi"
    While autor <> "todosvistos"
        CharTransf = ""
        Select Case autor
        Case "falashi"
            CharAutor = autor
            IntactomCOnium = mConium ' esta variável contem os signos na forma 00-00-
            mConium = Replace(mConium, "??-", "")
            mConium = Replace(mConium, "01-", "o")
            mConium = Replace(mConium, "02-", "k")
            mConium = Replace(mConium, "03-", "?")
            mConium = Replace(mConium, "04-", "a")
            mConium = Replace(mConium, "05-", "n")
            mConium = Replace(mConium, "06-", "r")
            mConium = Replace(mConium, "07-", "?")
            mConium = Replace(mConium, "08-", "m")
            mConium = Replace(mConium, "09-", "u")
            mConium = Replace(mConium, "10-", "?")
            mConium = Replace(mConium, "11-", "?")
            mConium = Replace(mConium, "12-", "i")
            mConium = Replace(mConium, "13-", "z")
            mConium = Replace(mConium, "14-", "?")
            mConium = Replace(mConium, "15-", "?")
            mConium = Replace(mConium, "16-", "?")
            mConium = Replace(mConium, "“três”-", "p")
            mConium = Replace(mConium, "18-", "i")
            mConium = Replace(mConium, "19-", "?")
            mConium = Replace(mConium, "20-", "h")
            mConium = Replace(mConium, "21-", "?")
            mConium = Replace(mConium, "22-", "h")
            mConium = Replace(mConium, "23-", "Th")
            mConium = Replace(mConium, "24-", "?")
            mConium = Replace(mConium, "25-", "?")
            mConium = Replace(mConium, "26-", "?")
            mConium = Replace(mConium, "27-", "?")
            mConium = Replace(mConium, "28-", "z")
            mConium = Replace(mConium, "29-", "?")
            mConium = Replace(mConium, "30-", "?")
            mConium = Replace(mConium, "31-", "?")
            mConium = Replace(mConium, "32-", "h")
            mConium = Replace(mConium, "33-", "?")
            mConium = Replace(mConium, "34-", "?")
            mConium = Replace(mConium, "35-", "?")
            mConium = Replace(mConium, "36-", "?")
            mConium = Replace(mConium, "37-", "?")
            mConium = Replace(mConium, "38-", "?")
            mConium = Replace(mConium, "39-", "?")
            mConium = Replace(mConium, "40-", "?")
            mConium = Replace(mConium, "41-", "?")
            mConium = Replace(mConium, "42-", "?")
            mConium = Replace(mConium, "43-", "t")
            mConium = Replace(mConium, "44-", "?")
            mConium = Replace(mConium, "47-", "?")
            mConium = Replace(mConium, "48-", "?")
            mConium = Replace(mConium, "49-", "z")
            mConium = Replace(mConium, "50-", "y")
            mConium = Replace(mConium, "51-", "r")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "53-", "?")
            mConium = Replace(mConium, "54-", "e")
            mConium = Replace(mConium, "55-", "?")
            mConium = Replace(mConium, "56-", "?")
            mConium = Replace(mConium, "57-", "?")
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium
            autor = "hoz"
        Case "hoz"
            signo20 = "r"
            CharAutor = ""
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            While signo20 <> "todosvistos"
                mConium = Replace(mConium, "??-", "?")
                mConium = Replace(mConium, "01-", "e")
                mConium = Replace(mConium, "02-", "ke")
                mConium = Replace(mConium, "03-", "?")
                mConium = Replace(mConium, "04-", "?")
                mConium = Replace(mConium, "05-", "n")
                mConium = Replace(mConium, "06-", "p")
                mConium = Replace(mConium, "07-", "Ki")
                mConium = Replace(mConium, "08-", "s") 'ou melhor dizendo 's
                mConium = Replace(mConium, "09-", "u")
                mConium = Replace(mConium, "10-", "?")
                mConium = Replace(mConium, "11-", "?")
                mConium = Replace(mConium, "12-", "i")
                mConium = Replace(mConium, "13-", "?")
                mConium = Replace(mConium, "14-", "?")
                mConium = Replace(mConium, "15-", "?")
                mConium = Replace(mConium, "16-", "?")
                mConium = Replace(mConium, "“três”-", "l")
                mConium = Replace(mConium, "18-", "Tu")
                mConium = Replace(mConium, "19-", "?")
                Select Case signo20
                Case "r"
                    CharAutor = CharAutor + "Hoz(20): R"
                    mConium = Replace(mConium, "20-", "r")
                    signo20 = "q"
                Case "q"
                    CharAutor = CharAutor + " - Hoz(20): Q"
                    mConium = Replace(mConium, "c20-", "q")
                    signo20 = "Te"
                Case "Te"
                    CharAutor = CharAutor + " - Hoz(20): Te"
                    mConium = Replace(mConium, "20-", "Te")
                    signo20 = "t"
                Case "t"
                    CharAutor = CharAutor + " - Hoz(20): T"
                    mConium = Replace(mConium, "20-", "t")
                    signo20 = "Bo"
                Case "Bo"
                    CharAutor = CharAutor + " - Hoz(20): Bo"
                    mConium = Replace(mConium, "20-", "Bo")
                    signo20 = "todosvistos"
                End Select
                mConium = Replace(mConium, "21-", "s")
                mConium = Replace(mConium, "22-", "Be")
                mConium = Replace(mConium, "23-", "Ti")
                mConium = Replace(mConium, "24-", "?")
                mConium = Replace(mConium, "25-", "?")
                mConium = Replace(mConium, "26-", "Ko")
                mConium = Replace(mConium, "27-", "?")
                mConium = Replace(mConium, "28-", "o")
                mConium = Replace(mConium, "29-", "o")
                mConium = Replace(mConium, "30-", "?")
                mConium = Replace(mConium, "31-", "?")
                mConium = Replace(mConium, "32-", "Bo")
                mConium = Replace(mConium, "33-", "?")
                mConium = Replace(mConium, "34-", "?")
                mConium = Replace(mConium, "35-", "?")
                mConium = Replace(mConium, "36-", "?")
                mConium = Replace(mConium, "37-", "?")
                mConium = Replace(mConium, "38-", "?")
                mConium = Replace(mConium, "39-", "?")
                mConium = Replace(mConium, "40-", "Bi")
                mConium = Replace(mConium, "41-", "To")
                mConium = Replace(mConium, "42-", "?")
                mConium = Replace(mConium, "43-", "Ta")
                mConium = Replace(mConium, "44-", "?")
                mConium = Replace(mConium, "47-", "?")
                mConium = Replace(mConium, "46-", "?")
                mConium = Replace(mConium, "47-", "?")
                mConium = Replace(mConium, "48-", "?")
                mConium = Replace(mConium, "49-", "Ba")
                mConium = Replace(mConium, "50-", "?")
                mConium = Replace(mConium, "51-", "?")
                mConium = Replace(mConium, "52-", "?")
                mConium = Replace(mConium, "53-", "?")
                mConium = Replace(mConium, "54-", "o")
                mConium = Replace(mConium, "55-", "?")
                mConium = Replace(mConium, "56-", "Ki")
                mConium = Replace(mConium, "57-", "M") '?
                premConium = mConium
                Call Transformacoes_e_Busca
                mConium = premConium
            Wend
            autor = "navarro"
        Case "navarro"
            matriz = "1"
            CharAutor = ""
            While matriz <> "todosvistos"

                mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
                Select Case matriz
                Case "1"
                        CharAutor = "Navarro(01): I"
                        mConium = Replace(mConium, "01-", "i")

                        CharAutor = CharAutor + " - Navarro(20): Es"
                        mConium = Replace(mConium, "20-", "Es")

                        CharAutor = CharAutor + " - Navarro(43): Da"
                        mConium = Replace(mConium, "43-", "Da")
                        matriz = "2"
                Case "2"
                    CharAutor = "Navarro(01): I"
                    mConium = Replace(mConium, "01-", "i")

                    CharAutor = CharAutor + " - Navarro(20): Es"
                    mConium = Replace(mConium, "20-", "Es")

                    CharAutor = CharAutor + " - Navarro(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "3"
                Case "3"
                    CharAutor = "Navarro(01): I"
                    mConium = Replace(mConium, "01-", "I")

                    CharAutor = CharAutor + " - Navarro(20): Ch"
                    mConium = Replace(mConium, "20-", "Ch")

                    CharAutor = CharAutor + " - Navarro(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "4"
                Case "4"
                    CharAutor = "Navarro(01): I"
                    mConium = Replace(mConium, "01-", "I")

                    CharAutor = CharAutor + " - Navarro(20): Ch"
                    mConium = Replace(mConium, "20-", "Ch")

                    CharAutor = CharAutor + " - Navarro(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "5"
                Case "5"
                    CharAutor = "Navarro(01): E"
                    mConium = Replace(mConium, "01-", "E")

                    CharAutor = CharAutor + " - Navarro(20): Ch"
                    mConium = Replace(mConium, "20-", "Ch")

                    CharAutor = CharAutor + " - Navarro(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "6"
                Case "6"
                    CharAutor = "Navarro(01): E"
                    mConium = Replace(mConium, "01-", "E")

                    CharAutor = CharAutor + " - Navarro(20): Es"
                    mConium = Replace(mConium, "20-", "Es")

                    CharAutor = CharAutor + " - Navarro(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "7"
                Case "7"
                    CharAutor = "Navarro(01): E"
                    mConium = Replace(mConium, "01-", "E")

                    CharAutor = CharAutor + " - Navarro(20): Ch"
                    mConium = Replace(mConium, "20-", "Ch")

                    CharAutor = CharAutor + " - Navarro(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "8"
                Case "8"
                    CharAutor = "Navarro(01): E"
                    mConium = Replace(mConium, "01-", "E")

                    CharAutor = CharAutor + " - Navarro(20): Ch"
                    mConium = Replace(mConium, "20-", "Ch")

                    CharAutor = CharAutor + " - Navarro(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "todosvistos"
                End Select
                mConium = Replace(mConium, "??-", "?")
                mConium = Replace(mConium, "02-", "c")
                mConium = Replace(mConium, "03-", "?")
                mConium = Replace(mConium, "04-", "a")
                mConium = Replace(mConium, "05-", "n")
                mConium = Replace(mConium, "06-", "r")
                mConium = Replace(mConium, "07-", "z")
                mConium = Replace(mConium, "08-", "s")
                mConium = Replace(mConium, "09-", "o")
                mConium = Replace(mConium, "10-", "?")
                mConium = Replace(mConium, "11-", "?")
                mConium = Replace(mConium, "12-", "i")
                mConium = Replace(mConium, "13-", "?")
                mConium = Replace(mConium, "14-", "Sol")
                mConium = Replace(mConium, "15-", "?")
                mConium = Replace(mConium, "16-", "?")
                mConium = Replace(mConium, "“três”-", "g")
                mConium = Replace(mConium, "18-", "Va")
                mConium = Replace(mConium, "19-", "?")
                mConium = Replace(mConium, "21-", "s")
                mConium = Replace(mConium, "22-", "Do")
                mConium = Replace(mConium, "23-", "T")
                mConium = Replace(mConium, "24-", "?")
                mConium = Replace(mConium, "25-", "Sol")
                mConium = Replace(mConium, "26-", "?")
                mConium = Replace(mConium, "27-", "?")
                mConium = Replace(mConium, "28-", "e")
                mConium = Replace(mConium, "29-", "e")
                mConium = Replace(mConium, "29-", "??")
                mConium = Replace(mConium, "31-", "b")
                mConium = Replace(mConium, "32-", "Bi")
                mConium = Replace(mConium, "33-", "f")
                mConium = Replace(mConium, "34-", "?")
                mConium = Replace(mConium, "35-", "?")
                mConium = Replace(mConium, "36-", "?")
                mConium = Replace(mConium, "37-", "?")
                mConium = Replace(mConium, "38-", "?")
                mConium = Replace(mConium, "39-", "d")
                mConium = Replace(mConium, "40-", "Ps")
                mConium = Replace(mConium, "41-", "d")
                mConium = Replace(mConium, "42-", "?")
                mConium = Replace(mConium, "44-", "?")
                mConium = Replace(mConium, "47-", "?")
                mConium = Replace(mConium, "48-", "?")
                mConium = Replace(mConium, "49-", "s")
                mConium = Replace(mConium, "50-", "v")
                mConium = Replace(mConium, "51-", "?")
                mConium = Replace(mConium, "52-", "?")
                mConium = Replace(mConium, "53-", "?")
                mConium = Replace(mConium, "54-", "f")
                mConium = Replace(mConium, "55-", "m")
                mConium = Replace(mConium, "56-", "q")
                mConium = Replace(mConium, "57-", "m")
                premConium = mConium
                Call Transformacoes_e_Busca
                mConium = premConium
            Wend
            autor = "schmoll"
        Case "schmoll"
            CharAutor = autor
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            mConium = Replace(mConium, "??-", "?")
            mConium = Replace(mConium, "01-", "e")
            mConium = Replace(mConium, "02-", "?")
            mConium = Replace(mConium, "03-", "?")
            mConium = Replace(mConium, "04-", "a")
            mConium = Replace(mConium, "05-", "n")
            mConium = Replace(mConium, "06-", "r")
            mConium = Replace(mConium, "07-", "s")
            mConium = Replace(mConium, "08-", "?")
            mConium = Replace(mConium, "09-", "?")
            mConium = Replace(mConium, "10-", "?")
            mConium = Replace(mConium, "11-", "?")
            mConium = Replace(mConium, "12-", "i")
            mConium = Replace(mConium, "13-", "o")
            mConium = Replace(mConium, "14-", "?")
            mConium = Replace(mConium, "15-", "?")
            mConium = Replace(mConium, "16-", "?")
            mConium = Replace(mConium, "“três”-", "Ka")
            mConium = Replace(mConium, "18-", "Va")
            mConium = Replace(mConium, "19-", "?")
            mConium = Replace(mConium, "20-", "h")
            mConium = Replace(mConium, "21-", "s")
            mConium = Replace(mConium, "22-", "?")
            mConium = Replace(mConium, "23-", "?")
            mConium = Replace(mConium, "24-", "?")
            mConium = Replace(mConium, "25-", "?")
            mConium = Replace(mConium, "26-", "Ko")
            mConium = Replace(mConium, "27-", "?")
            mConium = Replace(mConium, "28-", "o")
            mConium = Replace(mConium, "29-", "o")
            mConium = Replace(mConium, "30-", "?")
            mConium = Replace(mConium, "31-", "?")
            mConium = Replace(mConium, "32-", "Po")
            mConium = Replace(mConium, "33-", "?")
            mConium = Replace(mConium, "34-", "?")
            mConium = Replace(mConium, "35-", "?")
            mConium = Replace(mConium, "36-", "?")
            mConium = Replace(mConium, "37-", "?")
            mConium = Replace(mConium, "38-", "?")
            mConium = Replace(mConium, "39-", "?")
            mConium = Replace(mConium, "40-", "?")
            mConium = Replace(mConium, "41-", "?")
            mConium = Replace(mConium, "42-", "?")
            mConium = Replace(mConium, "43-", "?")
            mConium = Replace(mConium, "44-", "?")
            mConium = Replace(mConium, "47-", "?")
            mConium = Replace(mConium, "48-", "?")
            mConium = Replace(mConium, "49-", "s")
            mConium = Replace(mConium, "50-", "?")
            mConium = Replace(mConium, "51-", "?")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "53-", "?")
            mConium = Replace(mConium, "54-", "o")
            mConium = Replace(mConium, "55-", "?")
            mConium = Replace(mConium, "56-", "Pi")
            mConium = Replace(mConium, "57-", "?")
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium
            autor = "moreno"
        Case "moreno"
            CharAutor = autor
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            mConium = Replace(mConium, "??-", "?")
            mConium = Replace(mConium, "01-", "o")
            mConium = Replace(mConium, "02-", "?")
            mConium = Replace(mConium, "03-", "?")
            mConium = Replace(mConium, "04-", "a")
            mConium = Replace(mConium, "05-", "?")
            mConium = Replace(mConium, "06-", "r")
            mConium = Replace(mConium, "07-", "?")
            mConium = Replace(mConium, "08-", "?")
            mConium = Replace(mConium, "09-", "?")
            mConium = Replace(mConium, "10-", "?")
            mConium = Replace(mConium, "11-", "?")
            mConium = Replace(mConium, "12-", "?")
            mConium = Replace(mConium, "13-", "?")
            mConium = Replace(mConium, "14-", "?")
            mConium = Replace(mConium, "15-", "?")
            mConium = Replace(mConium, "16-", "?")
            mConium = Replace(mConium, "“três”-", "l")
            mConium = Replace(mConium, "18-", "?")
            mConium = Replace(mConium, "19-", "?")
            mConium = Replace(mConium, "20-", "Ti")
            mConium = Replace(mConium, "21-", "?")
            mConium = Replace(mConium, "22-", "Be")
            mConium = Replace(mConium, "23-", "?")
            mConium = Replace(mConium, "24-", "?")
            mConium = Replace(mConium, "25-", "?")
            mConium = Replace(mConium, "26-", "Co")
            mConium = Replace(mConium, "27-", "?")
            mConium = Replace(mConium, "28-", "e")
            mConium = Replace(mConium, "29-", "e")
            mConium = Replace(mConium, "30-", "?")
            mConium = Replace(mConium, "31-", "?")
            mConium = Replace(mConium, "32-", "Bu")
            mConium = Replace(mConium, "33-", "Du")
            mConium = Replace(mConium, "34-", "?")
            mConium = Replace(mConium, "35-", "?")
            mConium = Replace(mConium, "36-", "?")
            mConium = Replace(mConium, "37-", "?")
            mConium = Replace(mConium, "38-", "?")
            mConium = Replace(mConium, "39-", "?")
            mConium = Replace(mConium, "40-", "?")
            mConium = Replace(mConium, "41-", "?")
            mConium = Replace(mConium, "42-", "?")
            mConium = Replace(mConium, "43-", "?")
            mConium = Replace(mConium, "44-", "?")
            mConium = Replace(mConium, "47-", "?")
            mConium = Replace(mConium, "48-", "?")
            mConium = Replace(mConium, "49-", "m")
            mConium = Replace(mConium, "50-", "?")
            mConium = Replace(mConium, "51-", "?")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "53-", "?")
            mConium = Replace(mConium, "54-", "e")
            mConium = Replace(mConium, "55-", "?")
            mConium = Replace(mConium, "56-", "Cu")
            mConium = Replace(mConium, "57-", "?")
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium
            autor = "shulten"
        Case "shulten"
            CharAutor = autor
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            mConium = Replace(mConium, "??-", "?")
            mConium = Replace(mConium, "01-", "o")
            mConium = Replace(mConium, "02-", "?")
            mConium = Replace(mConium, "03-", "?")
            mConium = Replace(mConium, "04-", "a")
            mConium = Replace(mConium, "05-", "?")
            mConium = Replace(mConium, "06-", "r")
            mConium = Replace(mConium, "07-", "s")
            mConium = Replace(mConium, "08-", "?")
            mConium = Replace(mConium, "09-", "?")
            mConium = Replace(mConium, "10-", "?")
            mConium = Replace(mConium, "11-", "?")
            mConium = Replace(mConium, "12-", "?")
            mConium = Replace(mConium, "13-", "?")
            mConium = Replace(mConium, "14-", "?")
            mConium = Replace(mConium, "15-", "?")
            mConium = Replace(mConium, "16-", "?")
            mConium = Replace(mConium, "“três”-", "l")
            mConium = Replace(mConium, "18-", "?")
            mConium = Replace(mConium, "19-", "?")
            mConium = Replace(mConium, "20-", "?")
            mConium = Replace(mConium, "21-", "?")
            mConium = Replace(mConium, "22-", "h")
            mConium = Replace(mConium, "23-", "?")
            mConium = Replace(mConium, "24-", "?")
            mConium = Replace(mConium, "25-", "?")
            mConium = Replace(mConium, "26-", "q")
            mConium = Replace(mConium, "27-", "?")
            mConium = Replace(mConium, "28-", "e")
            mConium = Replace(mConium, "29-", "e")
            mConium = Replace(mConium, "30-", "?")
            mConium = Replace(mConium, "31-", "?")
            mConium = Replace(mConium, "32-", "o")
            mConium = Replace(mConium, "33-", "?")
            mConium = Replace(mConium, "34-", "?")
            mConium = Replace(mConium, "35-", "?")
            mConium = Replace(mConium, "36-", "?")
            mConium = Replace(mConium, "37-", "?")
            mConium = Replace(mConium, "38-", "?")
            mConium = Replace(mConium, "39-", "?")
            mConium = Replace(mConium, "40-", "?")
            mConium = Replace(mConium, "41-", "?")
            mConium = Replace(mConium, "42-", "?")
            mConium = Replace(mConium, "43-", "?")
            mConium = Replace(mConium, "44-", "?")
            mConium = Replace(mConium, "47-", "?")
            mConium = Replace(mConium, "48-", "?")
            mConium = Replace(mConium, "49-", "s")
            mConium = Replace(mConium, "50-", "?")
            mConium = Replace(mConium, "51-", "?")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "51-", "?")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "53-", "?")
            mConium = Replace(mConium, "54-", "e")
            mConium = Replace(mConium, "55-", "?")
            mConium = Replace(mConium, "56-", "?")
            mConium = Replace(mConium, "57-", "?")
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium
            autor = "guadan"
        Case "guadan"
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            fimdeciclo = 1
                If InStr(pmConium, "01-") > 0 And InStr(pmConium, "21-") > 0 And InStr(pmConium, "22-") = 0 And _
                InStr(pmConium, "23-") > 0 And InStr(pmConium, "25-") > 0 And InStr(pmConium, "26-") = 0 And _
                InStr(pmConium, "32-") > 0 And InStr(pmConium, "40-") > 0 And InStr(pmConium, "41-") = 0 And _
                InStr(pmConium, "50-") > 0 And InStr(pmConium, "51-") > 0 And InStr(pmConium, "57-") = 0 Then
                    fimdeciclo = 3096
                Else
                    naoha = 0
                    If InStr(pmConium, "01-") > 0 Then naoha = 1
                    If InStr(pmConium, "21-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "22-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "23-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "25-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "26-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "32-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "40-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "41-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "50-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "51-") > 0 Then naoha = naoha + 1
                    If InStr(pmConium, "57-") > 0 Then naoha = naoha + 1
                    Select Case naoha
                    Case 11
                        fimdeciclo = 2048
                    Case 10
                        fimdeciclo = 1024
                    Case 9
                        fimdeciclo = 512
                    Case 8
                        fimdeciclo = 256
                    Case 7
                        fimdeciclo = 128
                    Case 6
                        fimdeciclo = 64
                    Case 5
                        fimdeciclo = 64 ' aumentei 32
                    Case 4
                        fimdeciclo = 64 ' aumentei de 16
                    Case 3
                        fimdeciclo = 64 ' aumentei de 8
                    Case 2
                        fimdeciclo = 64 ' aumentei de 4
                    Case 1
                        fimdeciclo = 64 ' aumentei de 2
                    End Select
                    lfimdeciclo = fimdeciclo
                End If

            CharAutor = "" ' de modo a limpar este campo, agora que entra o ciclo aleatório

            While maisum < fimdeciclo ' a fórmula x elevado a y dará 3096 combinações possíveis
                maisum = maisum + 1 ' esta variável permitirá controlar o ciclo de combinações aleatórias
                Randomize
                m01 = Int((2 * Rnd) + 1)
                If m01 = 1 Then
                    CharAutor = CharAutor + " - Guadan(01): Cu"
                    mConium = Replace(mConium, "01-", "Cu")
                Else
                    CharAutor = CharAutor + " - Guadan(01): Gu"
                    mConium = Replace(mConium, "01-", "Gu")
                End If
                m21 = Int((2 * Rnd) + 1)
                If m21 = 1 Then
                    CharAutor = CharAutor + " - Guadan(21): S"
                    mConium = Replace(mConium, "21-", "s")
                Else
                    CharAutor = CharAutor + " - Guadan(21): Gu"
                    mConium = Replace(mConium, "21-", "x")
                End If
                m22 = Int((2 * Rnd) + 1)
                If m22 = 1 Then
                    CharAutor = CharAutor + " - Guadan(22): Ba"
                    mConium = Replace(mConium, "22-", "Ba")
                Else
                    CharAutor = CharAutor + " - Guadan(22): Bi"
                    mConium = Replace(mConium, "22-", "Bi")
                End If
                m23 = Int((2 * Rnd) + 1)
                If m23 = 1 Then
                    CharAutor = CharAutor + " - Guadan(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                Else
                    CharAutor = CharAutor + " - Guadan(23): De"
                    mConium = Replace(mConium, "23-", "De")
                End If
                mConium = Replace(mConium, "24-", "?")
                m25 = Int((2 * Rnd) + 1)
                If m25 = 1 Then
                    CharAutor = CharAutor + " - Guadan(25): Bo"
                    mConium = Replace(mConium, "25-", "Bo")
                Else
                    CharAutor = CharAutor + " - Guadan(25): Po"
                    mConium = Replace(mConium, "25-", "Po")
                End If
                m26 = Int((2 * Rnd) + 1)
                If m26 = 1 Then
                    CharAutor = CharAutor + " - Guadan(26): Bo"
                    mConium = Replace(mConium, "26-", "Bo")
                Else
                    CharAutor = CharAutor + " - Guadan(26): Po"
                    mConium = Replace(mConium, "26-", "Po")
                End If
                m32 = Int((2 * Rnd) + 1)
                If m32 = 1 Then
                    CharAutor = CharAutor + " - Guadan(32): Bu"
                    mConium = Replace(mConium, "32-", "Bu")
                Else
                    CharAutor = CharAutor + " - Guadan(32): Pu"
                    mConium = Replace(mConium, "32-", "Pu")
                End If
                m40 = Int((2 * Rnd) + 1)
                If m40 = 1 Then
                    CharAutor = CharAutor + " - Guadan(40): U"
                    mConium = Replace(mConium, "40-", "u")
                Else
                    CharAutor = CharAutor + " - Guadan(40): V"
                    mConium = Replace(mConium, "40-", "v")
                End If
                m41 = Int((2 * Rnd) + 1)
                If m41 = 1 Then
                    CharAutor = CharAutor + " - Guadan(41): Du"
                    mConium = Replace(mConium, "41-", "Du")
                Else
                    CharAutor = CharAutor + " - Guadan(41): Tu"
                    mConium = Replace(mConium, "41-", "Tu")
                End If
                m50 = Int((2 * Rnd) + 1)
                If m50 = 1 Then
                    CharAutor = CharAutor + " - Guadan(50): M"
                    mConium = Replace(mConium, "50-", "m")
                Else
                    CharAutor = CharAutor + " - Guadan(50): N"
                    mConium = Replace(mConium, "50-", "n")
                End If
                m51 = Int((2 * Rnd) + 1)
                If m51 = 1 Then
                    CharAutor = CharAutor + " - Guadan(51): Pi"
                    mConium = Replace(mConium, "51-", "Pi")
                Else
                    CharAutor = CharAutor + " - Guadan(51): Bi"
                    mConium = Replace(mConium, "51-", "Bi")
                End If
                m57 = Int((2 * Rnd) + 1)
                If m51 = 1 Then
                    CharAutor = CharAutor + " - Guadan(57): Bo"
                    mConium = Replace(mConium, "57-", "Bo")
                Else
                    CharAutor = CharAutor + " - Guadan(57): Po"
                    mConium = Replace(mConium, "57-", "Po")
                End If

            Call GuadanFixos
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium

            Wend
            autor = "burgos"
        Case "burgos"
            mConium = Replace(mConium, "??-", "?")
            Call BurgosMega
            autor = "espanca"
        Case "espanca"
            CharAutor = autor
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            mConium = Replace(mConium, "??-", "?")
            mConium = Replace(mConium, "01-", "o")
            mConium = Replace(mConium, "02-", "k")
            mConium = Replace(mConium, "03-", "?")
            mConium = Replace(mConium, "04-", "a")
            mConium = Replace(mConium, "05-", "n")
            mConium = Replace(mConium, "06-", "r")
            mConium = Replace(mConium, "07-", "Sh")
            mConium = Replace(mConium, "08-", "?")
            mConium = Replace(mConium, "09-", "?")
            mConium = Replace(mConium, "10-", "?")
            mConium = Replace(mConium, "11-", "?")
            mConium = Replace(mConium, "12-", "?")
            mConium = Replace(mConium, "13-", "z")
            mConium = Replace(mConium, "14-", "?")
            mConium = Replace(mConium, "15-", "?")
            mConium = Replace(mConium, "16-", "?")
            mConium = Replace(mConium, "“três”-", "g")
            mConium = Replace(mConium, "18-", "?")
            mConium = Replace(mConium, "19-", "p")
            mConium = Replace(mConium, "20-", "h")
            mConium = Replace(mConium, "21-", "s")
            mConium = Replace(mConium, "22-", "?")
            mConium = Replace(mConium, "23-", "?")
            mConium = Replace(mConium, "24-", "q")
            mConium = Replace(mConium, "25-", "?")
            mConium = Replace(mConium, "26-", "?")
            mConium = Replace(mConium, "27-", "?")
            mConium = Replace(mConium, "28-", "?")
            mConium = Replace(mConium, "29-", "s")
            mConium = Replace(mConium, "30-", "?")
            mConium = Replace(mConium, "31-", "?")
            mConium = Replace(mConium, "32-", "?")
            mConium = Replace(mConium, "33-", "?")
            mConium = Replace(mConium, "34-", "?")
            mConium = Replace(mConium, "35-", "?")
            mConium = Replace(mConium, "36-", "?")
            mConium = Replace(mConium, "37-", "?")
            mConium = Replace(mConium, "38-", "?")
            mConium = Replace(mConium, "39-", "d")
            mConium = Replace(mConium, "40-", "?")
            mConium = Replace(mConium, "41-", "?")
            mConium = Replace(mConium, "42-", "?")
            mConium = Replace(mConium, "43-", "?")
            mConium = Replace(mConium, "44-", "?")
            mConium = Replace(mConium, "47-", "?")
            mConium = Replace(mConium, "48-", "?")
            mConium = Replace(mConium, "49-", "s")
            mConium = Replace(mConium, "50-", "?")
            mConium = Replace(mConium, "51-", "?")
            mConium = Replace(mConium, "52-", "?")
            mConium = Replace(mConium, "53-", "?")
            mConium = Replace(mConium, "54-", "?")
            mConium = Replace(mConium, "55-", "?")
            mConium = Replace(mConium, "56-", "?")
            mConium = Replace(mConium, "57-", "?")
            premConium = mConium
            Call Transformacoes_e_Busca
            mConium = premConium
            CharAutor = ""
            autor = "martins"
        Case "martins"
            matriz = 1
            mConium = IntactomCOnium ' o valor da mConium regressa assim à forma 99-99-
            While matriz <> "todosvistos"
                mConium = Replace(mConium, "??-", "?")
                mConium = Replace(mConium, "01-", "o")
                mConium = Replace(mConium, "02-", "k")
                mConium = Replace(mConium, "03-", "?")
                mConium = Replace(mConium, "04-", "a")
                mConium = Replace(mConium, "05-", "n")
                mConium = Replace(mConium, "06-", "r")
                mConium = Replace(mConium, "07-", "Sh")
                mConium = Replace(mConium, "08-", "m")
                mConium = Replace(mConium, "09-", "u")
                mConium = Replace(mConium, "10-", "?")
                mConium = Replace(mConium, "11-", "?")
                mConium = Replace(mConium, "12-", "i")
                mConium = Replace(mConium, "13-", "?")
                mConium = Replace(mConium, "14-", "?")
                mConium = Replace(mConium, "15-", "?")
                mConium = Replace(mConium, "16-", "An")
                mConium = Replace(mConium, "“três”-", "g")
                mConium = Replace(mConium, "18-", "?")
                mConium = Replace(mConium, "19-", "?")
                mConium = Replace(mConium, "20-", "h")
                mConium = Replace(mConium, "21-", "s")
                mConium = Replace(mConium, "22-", "?")
                mConium = Replace(mConium, "23-", "?")
                mConium = Replace(mConium, "24-", "q")
                mConium = Replace(mConium, "25-", "?")
                mConium = Replace(mConium, "26-", "?")
                mConium = Replace(mConium, "27-", "?")
                mConium = Replace(mConium, "28-", "e")
                mConium = Replace(mConium, "29-", "s")
                mConium = Replace(mConium, "30-", "?")
                mConium = Replace(mConium, "31-", "?")
                mConium = Replace(mConium, "32-", "?")
                mConium = Replace(mConium, "33-", "?")
                mConium = Replace(mConium, "34-", "?")
                mConium = Replace(mConium, "35-", "h")
                mConium = Replace(mConium, "36-", "m")
                mConium = Replace(mConium, "37-", "?")
                mConium = Replace(mConium, "38-", "?")
                mConium = Replace(mConium, "39-", "d")

                Select Case matriz
                Case "1"
                    CharAutor = CharAutor + " - Martins(40): U"
                    mConium = Replace(mConium, "40-", "u")

                    CharAutor = CharAutor + " - Martins(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "2"
                Case "2"
                    CharAutor = CharAutor + " - Martins(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Martins(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "3"
                Case "3"
                    CharAutor = CharAutor + " - Martins(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Martins(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "4"
                Case "4"
                    CharAutor = CharAutor + " - Martins(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Martins(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "todosvistos"
                End Select
                mConium = Replace(mConium, "41-", "?")
                mConium = Replace(mConium, "42-", "?")
                mConium = Replace(mConium, "44-", "?")
                mConium = Replace(mConium, "47-", "?")
                mConium = Replace(mConium, "48-", "?")
                mConium = Replace(mConium, "49-", "s")
                mConium = Replace(mConium, "50-", "?")
                mConium = Replace(mConium, "51-", "?")
                mConium = Replace(mConium, "52-", "?")
                mConium = Replace(mConium, "53-", "?")
                mConium = Replace(mConium, "54-", "h")
                mConium = Replace(mConium, "55-", "?")
                mConium = Replace(mConium, "56-", "?")
                mConium = Replace(mConium, "57-", "?")
                premConium = mConium
                Call Transformacoes_e_Busca
                Exit Sub
                autor = "todosvistos"
            Wend
        End Select
        occitano = 0
        desc = 0
        albanes = 0
        anatolico = 0
        antgales = 0
        antigoeuropeu = 0
        antigoirlandes = 0
        antroponimos = 0
        antroponimosibericos = 0
        asturegalaico = 0
        baleares = 0
        baltico = 0
        basco = 0
        berbere = 0
        caledoniano = 0
        castelhano = 0
        celta = 0
        celtibero = 0
        concani = 0
        teonimo = 0
        escoces = 0
        etnico = 0
        etnonimo = 0
        etrusco = 0
        fenicio = 0
        finougrico = 0
        gaelico = 0
        gales = 0
        gaules = 0
        germanico = 0
        grego = 0
        guanche = 0
        DardjaArgelia = 0
        hidronimo = 0
        hitita = 0
        hurrita = 0
        iberico = 0
        ibericodonorte = 0
        ibericodosul = 0
        ilirio = 0
        indoeuropeu = 0
        indoiraniano = 0
        irlandes = 0
        latim = 0
        lemnos = 0
        libioberbere = 0
        licio = 0
        ligure = 0
        lituano = 0
        logudures = 0
        lusitano = 0
        mediterranico = 0
        maltes = 0
        mediterranicodegeorgiev = 0
        micenico = 0
        numismatica = 0
        onomasticapaleohispanica = 0
        osco = 0
        paleobasco = 0
        pelasgo = 0
        toponimo = 0
        protosemita = 0
        punico = 0
        sanscrito = 0
        sardo = 0
        semitaocidental = 0
        siriohititamesopotamico = 0
        sumerio = 0
        tamazight = 0
        taqbayliyt = 0
        tarifiyt = 0
        tashawit = 0
        teonimo = 0
        tracio = 0
        turdetano = 0
        turdulo = 0
        umbrio = 0
        unilingua = 0
    Wend
Wend

Windows("CPLog" & mlingua & ".doc").Activate ' abre o CPLog.doc para que este possa ser analisado...
Selection.HomeKey Unit:=wdStory ' vai para o primeiro caracter de modo a permitir uma leitura a partir do doc de log

End Sub

Sub Transformacoes_e_Busca()
'Mods de transformação fonética:

    OriConium = mConium ' vai carregar em OriConium o valor da string antes desta ter sido submetida a este grupo de transformações
    matrix = 27 ' 0 corresponde a todos vistos

    While matrix <> 0
        Select Case matrix
            Case 1
                If InStr(1, mConium, "ee") And Len(mConium) > 1 Then mConium = Replace(mConium, "ee", "e")
                If InStr(1, mConium, "a") And Len(mConium) > 1 Then mConium = Replace(mConium, "a", "e")
                If InStr(1, mConium, "is") And Len(mConium) > 1 Then mConium = Replace(mConium, "is", "i")
                matrix = 2
            Case 2
                If InStr(1, mConium, "e") And Len(mConium) > 1 Then mConium = Replace(mConium, "e", "i")
                If InStr(1, mConium, "sa") And Len(mConium) > 1 Then mConium = Replace(mConium, "sa", "s")
                If InStr(1, mConium, "k") And Len(mConium) > 1 Then mConium = Replace(mConium, "k", "g")
                matrix = 3
            Case 3
                If InStr(1, mConium, "iom") And Len(mConium) > 3 Then mConium = Replace(mConium, "iom", "io")
                If InStr(1, mConium, "k") And Len(mConium) > 1 Then mConium = Replace(mConium, "k", "c")
                If InStr(1, mConium, "u") And Len(mConium) > 1 Then mConium = Replace(mConium, "u", "es")
                matrix = 4
            Case 4
                If InStr(1, mConium, "kis") And Len(mConium) > 3 Then mConium = Replace(mConium, "kis", "ki")
                If InStr(1, mConium, "ss") And Len(mConium) > 2 Then mConium = Replace(mConium, "ss", "s")
                matrix = 5
            Case 5
                If InStr(1, mConium, "kos") And Len(mConium) > 3 Then mConium = Replace(mConium, "kos", "s")
                If InStr(1, mConium, "lens") And Len(mConium) > 4 Then mConium = Replace(mConium, "lens", "les")
                If InStr(1, mConium, "um") And Len(mConium) > 2 Then mConium = Replace(mConium, "um", "u")
                If InStr(1, mConium, "a") And Len(mConium) > 2 Then mConium = Replace(mConium, "a", "i")
                matrix = 6
            Case 6
                If Len(mConium) > 2 Then mConium = Replace(mConium, "ab", "")
                matrix = 7
            Case 7
                If Len(mConium) > 3 Then mConium = Replace(mConium, "ken", "")
                matrix = 8
            Case 8
                If Len(mConium) > 3 Then mConium = Replace(mConium, "kom", "")
                matrix = 9
            Case 9
                If Len(mConium) > 2 Then mConium = Replace(mConium, "is", "")
                matrix = 10
            Case 10
                If Len(mConium) > 2 Then mConium = Replace(mConium, "l", "i")
                matrix = 11
            Case 11
                If Len(mConium) > 2 Then mConium = Replace(mConium, "i", "l")
                matrix = 12
            Case 12
                If Len(mConium) > 2 Then mConium = Replace(mConium, "i", "l")
                matrix = 13
            Case 13
                If Len(mConium) > 2 Then mConium = Replace(mConium, "ar", "a")
                matrix = 14
            Case 14
                If Len(mConium) > 2 Then mConium = Replace(mConium, "ir", "i")
                matrix = 15
            Case 15
                If Len(mConium) > 2 Then mConium = Replace(mConium, "rr", "r")
                matrix = 16
            Case 16
                If Len(mConium) > 2 Then mConium = Replace(mConium, "l", "r")
                matrix = “três”
            Case “três”
                If Len(mConium) > 2 Then mConium = Replace(mConium, "r", "l")
                matrix = 18
            Case 18
                If Len(mConium) > 2 Then mConium = Replace(mConium, "b", "u")
                matrix = 19
            Case 19
                If Len(mConium) > 2 Then mConium = Replace(mConium, "u", "b")
                matrix = 20
            Case 21
                If Len(mConium) > 2 Then mConium = Replace(mConium, "e", "ei")
                matrix = 22
            Case 22
                If Len(mConium) > 2 Then mConium = Replace(mConium, "ei", "e")
                matrix = 23
            Case 23
                If Len(mConium) > 2 Then mConium = Replace(mConium, "vv", "uw")
                matrix = 24
            Case 24
                If Len(mConium) > 2 Then mConium = Replace(mConium, "uw", "vv")
                matrix = 25
            Case 25
                If Len(mConium) > 2 Then
                    mConium = Replace(mConium, "om", "")
                End If
                matrix = 26
            Case 26
                ' neste caso 26 não serão feitas nenhumas alterações à string
                'na primeira vez do ciclo, nao devem ocorrer transformacoes de tipo nenhum:
                If InStr(mConium, "ee") > 0 Or InStr(mConium, "a") > 0 Or InStr(mConium, "is") > 0 Then
                    matrix = 1
                Else
                    If InStr(mConium, "sa") > 0 Or InStr(mConium, "k") > 0 Then
                        matrix = 2
                    Else
                        If InStr(mConium, "iom") > 0 Or InStr(mConium, "u") > 0 Then
                           matrix = 3
                        Else
                            If InStr(mConium, "kis") > 0 Or InStr(mConium, "ss") > 0 Then
                                matrix = 4
                            Else
                                If InStr(mConium, "kos") > 0 Or InStr(mConium, "lens") > 0 Or InStr(mConium, "um") > 0 Then
                                    matrix = 5
                                Else
                                    If InStr(mConium, "ab") > 0 Then
                                        matrix = 6
                                    Else
                                        If InStr(mConium, "ken") > 0 Then
                                            matrix = 7
                                        Else
                                            If InStr(mConium, "kom") > 0 Then
                                                matrix = 8
                                            Else
                                                If InStr(mConium, "is") > 0 Then
                                                    matrix = 9
                                                Else
                                                    If InStr(mConium, "om") > 0 And matrix <> 11 Then
                                                        matrix = 10
                                                    Else
                                                        matrix = 0
                                                    End If
                                                End If
                                            End If
                                        End If
                                    End If
                                 End If
                            End If
                        End If
                    End If
                End If

            Case 27
                matrix = 0
            End Select


    Call Busca

    If (InStr(mConium, "?") > 2 Or InStr(mConium, "?") = 0) And Len(mConium) >= 2 Then
        If OriConium <> mConium Then ' só vale a pena mostrar o efeito da transformação quando esta ocorrer
            CharTransf = Chr(13) & "--> Transformações da numismática ibérica e comuns na fonética aplicadas sobre a string original: " & OriConium & " tendo-se tornado em: " & mConium & Chr(13)
        End If
    End If

    Windows("MyBabel.doc").Activate

    Wend

'End If

End Sub
Sub Busca()
    If autor = "guadan" Then
           If matrix = 0 Then
                mostramatrix = 1
           Else
                mostramatrix = matrix
                If mostramatrix = 12 Then
                    mostramatrix = 11
                End If
           End If
           StatusBar = "<" & mString & "> Por " & mConium & " em GUADAN " & Str(maisum) & "/" & Str(fimdeciclo) & " Est: " & pmConium & " Transf:" & Str(mostramatrix) & "/11"
    Else
        If autor = "burgos" Then
           If matrix = 0 Then
                mostramatrix = 1
           Else
                mostramatrix = matrix
                If mostramatrix = 12 Then
                    mostramatrix = 11
                End If
           End If
           StatusBar = "<" & mString & "> Por " & mConium & " em BURGOS(35) Est:" & pmConium & "  Tr:" & Str(mostramatrix) & "/11"
        Else
           If matrix = 0 Then
                mostramatrix = 1
           Else
                mostramatrix = matrix
                If mostramatrix = 12 Then
                    mostramatrix = 11
                End If
           End If
           If autor = "todosvistos" Then
                mautor = "<retorno>"
           Else
                mautor = autor
           End If
           StatusBar = "<" & mString & "> Por " & mConium & " em " & mautor & " Est: " & pmConium & " Transf:" & Str(mostramatrix) & "/11"
        End If
    End If
    Windows("MyBabel.doc").Activate

    With Selection.Find
    .Text = "<" & mConium & ">"
    .Forward = True
    .MatchCase = False
    .MatchWildcards = True
    End With

    Selection.HomeKey Unit:=wdStory
    Selection.Find.ClearFormatting
    Selection.Find.Font.Bold = True ' procura só o que está em Negrito (bold) de modo a ir para a segunda coluna, apenas.
    Selection.Find.Execute

    If (mConium = "??" Or mConium = "???" Or mConium = "????" Or mConium = "?????") Then
        nopej = 1
    Else
        nopej = 0
    End If

    While Selection.Find.Found And nopej = 0
    ' enquanto forem encontradas ocorrências, permanece no ciclo, procurando

            Windows("MyBabel.doc").Activate

            mEncontrada = ""
            mEncontrada = Selection.Text

            ' seleccionando toda a palavra onde foi encontrada a sub-string:
            With Selection
                Selection.HomeKey Unit:=wdLine
                Selection.EndKey Unit:=wdLine, Extend:=wdExtend
            End With
            mPalavra = Selection.Text
            If ultimapalavra <> mPalavra Then
            If Len(mConium) > 2 Or (Len(mConium) = 2 And InStr(mConium, "?") = 0) Or (Len(mConium) = 1 And InStr(mConium, "?") = 0) Then
                Windows("MyBabel.doc").Activate
                With Selection
                    Selection.MoveLeft Unit:=wdWord, Count:=3 ' recua para a lingua
                    Selection.MoveRight Unit:=wdWord, Count:=1, Extend:=wdExtend ' selecciona a lingua
                    mlingua = Selection.Text
                End With
                Selection.MoveRight Unit:=wdCell, Count:=2, Extend:=wdExtend 'selecciona a descricao
                mdescricao = Selection.Text
                Selection.MoveRight Unit:=wdCharacter, Count:=1 ' desmarca a seleccao da descricao
                If (Len(mConium) > 2 Or (Len(mConium) = 2 And InStr(mConium, "?") = 0) Or (Len(mConium) = 1 And InStr(mConium, "?") = 0)) Then
                    Select Case mlingua
                    Case "DardjaArgélia"
                        DardjaArgelia = DardjaArgelia + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"
                    Case "lídio"
                        lidio = lidio + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "Occitano"
                        occitano = occitano + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"
                    Case "?"
                        desc = desc + 1
                        grupo = "Grupo 4 Línguas Indeterminadas"
                    Case "albanês"
                        albanes = albanes + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "anatólico"
                        anatolico = anatolico + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "antgalês"
                        antgales = antgales + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "antigoeuropeu"
                        antigoeuropeu = antigoeuropeu + 1
                        grupo = "Grupo 6 Antigo-Europeu"
                    Case "paleoirlandês"
                        antigoirlandes = antigoirlandes + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "antropónimos"
                        antroponimos = antroponimos + 1
                        grupo = "Grupo 7 Antropónimos"
                    Case "antropónimosibéricos"
                        antroponimosibericos = antroponimosibericos + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "asturegalaico"
                        asturegalaico = asturegalaico + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "baleares"
                        baleares = baleares + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "Basco"
                        basco = basco + 1
                        grupo = "Grupo 9 Basco"
                    Case "berbere"
                        berbere = berbere + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"
                    Case "bretão"
                        bretao = bretao + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "caledoniano"
                        caledoniano = caledoniano + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "castelhano"
                        castelhano = castelhano + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"
                    Case "celta"
                        celta = celta + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "celtibero"
                        celtibero = celtibero + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "céltico"
                        celta = celta + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "concani"
                        concani = concani + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "divindade"
                        teonimo = teonimo + 1
                        grupo = "Grupo 10 Teónimos"
                    Case "escoçês"
                        escoces = escoces + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "étnico"
                        etnico = etnico + 1
                        grupo = "Grupo 11 Nomes Étnicos"
                    Case "etnónimo"
                        etnonimo = etnonimo + 1
                        grupo = "Grupo 11 Nomes Étnicos"
                    Case "etrusco"
                        etrusco = etrusco + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "fenício"
                        fenicio = fenicio + 1
                        grupo = "Grupo 12 Línguas Semíticas"
                    Case "finoúgrico"
                        finougrico = finougrico + 1
                        grupo = "Grupo 13 Finoúgrico"
                    Case "gaélico"
                        gaelico = gaelico + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "galês"
                        gales = gales + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "gaulês"
                        gaules = gaules + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "germânico"
                        germanico = germanico + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "grego"
                        grego = grego + 1
                        grupo = "Grupo 14 Grego"
                    Case "guanche"
                        guanche = guanche + 1
                        grupo = "Grupo 15 Guanche"
                    Case "hidrónimo"
                        hidronimo = hidronimo + 1
                        grupo = "Grupo 16 Hidrónimos"
                    Case "hitita"
                        hitita = hitita + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "hurrita"
                        hurrita = hurrita + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "ibérico"
                        iberico = iberico + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "ibéricodonorte"
                        ibericodonorte = ibericodonorte + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "ibéricodosul"
                        ibericodosul = ibericodosul + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "ilírio"
                        ilirio = ilirio + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"
                    Case "indoeuropeu"
                        indoeuropeu = indoeuropeu + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "indoiraniano"
                        indoiraniano = indoiraniano + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "irlandês"
                        irlandes = irlandes + 1
                        grupo = "Grupo 5 Línguas Célticas"
                    Case "latim"
                        latim = latim + 1
                        grupo = "Grupo “três” Latim"
                    Case "lemnos"
                        lemnos = lemnos + 1
                        grupo = "Grupo 18 Estela de Lemnos"
                    Case "libioberbere"
                        libioberbere = libioberbere + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"

                    Case "lício"
                        licio = licio + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"

                    Case "lígure"
                        ligure = ligure + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"

                    Case "logudurês"
                        logudures = logudures + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "lusitano"
                        lusitano = lusitano + 1
                        grupo = "Grupo 19 Lusitano"

                    Case "Maltês"
                        maltes = maltes + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "mediterrânico"
                        mediterranico = mediterranico + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "mediterrânicodeGeorgiev"
                        mediterranicodegeorgiev = mediterranicodegeorgiev + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "micénico"
                        micenico = micenico + 1
                        grupo = "Grupo 20 Micénico"

                    Case "numismática"
                        numismatica = numismatica + 1
                        grupo = "Grupo 21 Numismática"

                    Case "onomásticapaleohispânica"
                        onomasticapaleohispanica = onomasticapaleohispanica + 1
                        grupo = "Grupo 7 Antropónimos"

                    Case "osco"
                        osco = osco + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "paleobasco"
                        paleobasco = paleobasco + 1
                        grupo = "Grupo 9 Basco"

                    Case "pelasgo"
                        pelasgo = pelasgo + 1
                        grupo = "Grupo 2 Línguas da Ásia Menor e dos Pelasgos"

                    Case "topónimo"
                        toponimo = toponimo + 1
                        grupo = "Grupo 22 Topónimos"
                    Case "protosemita"
                        protosemita = protosemita + 1
                        grupo = "Grupo 12 Línguas Semíticas"

                    Case "púnico"
                        punico = punico + 1
                        grupo = "Grupo 12 Línguas Semíticas"

                    Case "sânscrito"
                        sanscrito = sanscrito + 1
                        grupo = "Grupo 5 Línguas Célticas"

                    Case "sardo"
                        sardo = sardo + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"

                    Case "semitaocidental"
                        semitaocidental = semitaocidental + 1
                        grupo = "Grupo 12 Línguas Semíticas"

                    Case "siriohititamesopotâmico"
                        siriohititamesopotamico = siriohititamesopotamico + 1
                        grupo = "Grupo 12 Línguas Semíticas"

                    Case "sumério"
                        sumerio = sumerio + 1
                        grupo = "Grupo 25 Sumério"

                    Case "Tamazight"
                        tamazight = tamazight + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"

                    Case "taqbayliyt"
                        taqbayliyt = taqbayliyt + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"

                    Case "tarifiyt"
                        tarifiyt = tarifiyt + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"

                    Case "tartéssico"
                        tartessico = tartessico + 1
                        grupo = "Grupo 8 Línguas Ibéricas"

                    Case "tashawit"
                        tashawit = tashawit + 1
                        grupo = "Grupo 1 Línguas Berberes do Norte de África"

                    Case "teónimo"
                        teonimo = teonimo + 1
                        grupo = "Grupo 10 Teónimos"

                    Case "trácio"
                        tracio = tracio + 1
                        grupo = "Grupo 23 Trácio"

                    Case "turdetano"
                        turdetano = turdetano + 1
                        grupo = "Grupo 8 Línguas Ibéricas"

                    Case "turdúlo"
                        turdulo = turdulo + 1
                        grupo = "Grupo 8 Línguas Ibéricas"
                    Case "Úmbrio"
                        umbrio = umbrio + 1
                        grupo = "Grupo 3 Línguas do Substrato Mediterrâneo"
                    Case "unilíngua"
                        unilingua = unilingua + 1
                        grupo = "Grupo 24 Língua Universal de Ruehlen"
                    End Select
                'End If
                Documents.Open FileName:="C:\CPLog" & grupo & ".doc", ConfirmConversions:=False, _
                ReadOnly:=False, AddToRecentFiles:=False, PasswordDocument:="", _
                PasswordTemplate:="", Revert:=False, WritePasswordDocument:="", _
                WritePasswordTemplate:="", Format:=wdOpenFormatAuto
                Windows("CPLog" & grupo & ".doc").Activate
                'passa para o principio, em vez do fim do documento:
                Selection.HomeKey Unit:=wdStory
                Selection.TypeParagraph
                Selection.TypeParagraph
                Selection.TypeParagraph
                Selection.TypeText Text:=">>> Sistema <" & autor & "> sobre os signos <" & mString & "> "
                Selection.Font.Name = "Untitled"
                Selection.Font.Size = 18
                Selection.TypeText Text:=fc
                Selection.TypeParagraph
                Selection.Font.Name = "Arial"
                Selection.Font.Size = 8
                Selection.TypeParagraph
                Selection.TypeText Text:=CharTransf
                StatusBar = "Procurei <" & mConium & "> tendo encontrado: " & mPalavra
                Selection.TypeParagraph
                Selection.TypeText Text:=" A palavra procurada foi: <"
                Selection.Font.Bold = wdToggle ' liga o Bold, para permitir contagem de caracteres
                Selection.TypeText Text:=mConium
                Selection.Font.Bold = wdToggle
                Selection.TypeText Text:=">"
                If mdescricao = "wine" Then
                    Stop
                End If
                Selection.TypeText Text:=" tendo sido encontrada em " & mPalavra
                Selection.TypeBackspace
                ultimapalavra = mPalavra
                Selection.TypeParagraph
                Selection.TypeText Text:=" Com o significado <" & mdescricao & "> na língua-hipótese <" & mlingua & ">"
                End If
            End If
            End If
            Windows("MyBabel.doc").Activate
            Selection.MoveRight Unit:=wdCharacter, Count:=1 ' desmarca a seleccao da descricao
            Selection.Find.ClearFormatting
            Selection.Find.Font.Bold = True ' procura só o que está em Negrito (bold) de modo a ir para a segunda coluna, apenas.
            Selection.Find.MatchWildcards = True
            Selection.Find.Execute
    Wend
    grupo = Empty
    Windows("MyBabel.doc").Activate
End Sub

Sub GuadanFixos()
        mConium = IntactomCOnium
        mConium = Replace(mConium, "??-", "?")
        mConium = Replace(mConium, "02-", "Ke")
        mConium = Replace(mConium, "03-", "?")
        mConium = Replace(mConium, "04-", "a")
        mConium = Replace(mConium, "05-", "n")
        mConium = Replace(mConium, "06-", "r")
        mConium = Replace(mConium, "07-", "s")
        mConium = Replace(mConium, "08-", "s")
        mConium = Replace(mConium, "09-", "?")
        mConium = Replace(mConium, "10-", "?")
        mConium = Replace(mConium, "11-", "?")
        mConium = Replace(mConium, "12-", "i")
        mConium = Replace(mConium, "13-", "?")
        mConium = Replace(mConium, "14-", "?")
        mConium = Replace(mConium, "15-", "?")
        mConium = Replace(mConium, "16-", "?")
        mConium = Replace(mConium, "“três”-", "m")
        mConium = Replace(mConium, "18-", "Ba")
        mConium = Replace(mConium, "19-", "?")
        mConium = Replace(mConium, "20-", "o")
        mConium = Replace(mConium, "24-", "?")
        mConium = Replace(mConium, "27-", "?")
        mConium = Replace(mConium, "28-", "e")
        mConium = Replace(mConium, "29-", "e")
        mConium = Replace(mConium, "30-", "?")
        mConium = Replace(mConium, "31-", "b")
        mConium = Replace(mConium, "33-", "?")
        mConium = Replace(mConium, "34-", "?")
        mConium = Replace(mConium, "35-", "?")
        mConium = Replace(mConium, "36-", "?")
        mConium = Replace(mConium, "37-", "?")
        mConium = Replace(mConium, "38-", "?")
        mConium = Replace(mConium, "39-", "?")
        mConium = Replace(mConium, "42-", "?")
        mConium = Replace(mConium, "43-", "?")
        mConium = Replace(mConium, "44-", "?")
        mConium = Replace(mConium, "47-", "?")
        mConium = Replace(mConium, "48-", "?")
        mConium = Replace(mConium, "49-", "?")
        mConium = Replace(mConium, "52-", "?")
        mConium = Replace(mConium, "53-", "?")
        mConium = Replace(mConium, "54-", "e")
        mConium = Replace(mConium, "56-", "r")
End Sub

Sub BurgosMega()
            matriz = "1"
            CharAutor = ""
            mConium = IntactomCOnium
            While matriz <> "todosvistos"
                mConium = Replace(mConium, "??-", "?")
                mConium = Replace(mConium, "01-", "?")
                mConium = Replace(mConium, "02-", "?")
                mConium = Replace(mConium, "03-", "?")
                Select Case matriz
                Case "1"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")

                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")

                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")

                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")

                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "2"
                Case "2"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "3"
                Case "3"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "4"
                Case "4"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "5"
                Case "5"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")

                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")

                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")

                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "6"
                Case "6"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")

                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")

                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")

                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")

                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "7"
                Case "7"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")

                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")

                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")

                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")

                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "8"
                Case "8"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")

                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")

                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")

                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")

                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "9"
                Case "9"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")

                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "10"
                Case "10"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "11"
                Case "11"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "12"
                Case "12"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "13"
                Case "13"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): S"
                    mConium = Replace(mConium, "23-", "S")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "14"
                Case "14"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "15"
                Case "15"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "16"
                Case "16"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "“três”"
                Case "“três”"
                    CharAutor = CharAutor + " - Burgos(04): Ca"
                    mConium = Replace(mConium, "04-", "Ca")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "18"
                Case "18"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "19"
                Case "19"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "20"
                Case "20"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "21"
                Case "21"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "22"
                Case "22"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "23"
                Case "23"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "24"
                Case "24"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "25"
                Case "25"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): S"
                    mConium = Replace(mConium, "08-", "s")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "26"
                Case "26"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "27"
                Case "27"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "28"
                Case "28"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "29"
                Case "29"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "30"
                Case "30"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "31"
                Case "31"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): De"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "32"
                Case "32"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "33"
                Case "33"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "34"
                Case "34"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): De"
                    mConium = Replace(mConium, "23-", "De")
                    CharAutor = CharAutor + " - Burgos(40): V"
                    mConium = Replace(mConium, "40-", "v")
                    CharAutor = CharAutor + " - Burgos(43): Ta"
                    mConium = Replace(mConium, "43-", "Ta")
                    matriz = "35"
                Case "35"
                    CharAutor = CharAutor + " - Burgos(04): Ga"
                    mConium = Replace(mConium, "04-", "Ga")
                    CharAutor = CharAutor + " - Burgos(08): H"
                    mConium = Replace(mConium, "08-", "h")
                    CharAutor = CharAutor + " - Burgos(23): Te"
                    mConium = Replace(mConium, "23-", "Te")
                    CharAutor = CharAutor + " - Burgos(40): U"
                    mConium = Replace(mConium, "40-", "u")
                    CharAutor = CharAutor + " - Burgos(43): Da"
                    mConium = Replace(mConium, "43-", "Da")
                    matriz = "todosvistos"
                End Select
                mConium = Replace(mConium, "05-", "n")
                mConium = Replace(mConium, "06-", "r")
                mConium = Replace(mConium, "07-", "s")
                mConium = Replace(mConium, "09-", "?")
                mConium = Replace(mConium, "10-", "m")
                mConium = Replace(mConium, "11-", "?")
                mConium = Replace(mConium, "12-", "i")
                mConium = Replace(mConium, "13-", "?")
                mConium = Replace(mConium, "14-", "?")
                mConium = Replace(mConium, "15-", "?")
                mConium = Replace(mConium, "16-", "?")
                mConium = Replace(mConium, "“três”-", "?")
                mConium = Replace(mConium, "18-", "Ba")
                mConium = Replace(mConium, "19-", "?")
                mConium = Replace(mConium, "20-", "?")
                mConium = Replace(mConium, "21-", "?")
                mConium = Replace(mConium, "22-", "?")
                mConium = Replace(mConium, "24-", "?")
                mConium = Replace(mConium, "25-", "Bo")
                mConium = Replace(mConium, "26-", "?")
                mConium = Replace(mConium, "27-", "?")
                mConium = Replace(mConium, "28-", "?")
                mConium = Replace(mConium, "29-", "?")
                mConium = Replace(mConium, "30-", "?")
                mConium = Replace(mConium, "31-", "?")
                mConium = Replace(mConium, "32-", "Bu")
                mConium = Replace(mConium, "33-", "?")
                mConium = Replace(mConium, "34-", "?")
                mConium = Replace(mConium, "35-", "?")
                mConium = Replace(mConium, "36-", "?")
                mConium = Replace(mConium, "37-", "?")
                mConium = Replace(mConium, "38-", "?")
                mConium = Replace(mConium, "39-", "r")
                mConium = Replace(mConium, "41-", "?")
                mConium = Replace(mConium, "42-", "?")
                mConium = Replace(mConium, "44-", "?")
                mConium = Replace(mConium, "47-", "?")
                mConium = Replace(mConium, "48-", "?")
                mConium = Replace(mConium, "49-", "s")
                mConium = Replace(mConium, "50-", "?")
                mConium = Replace(mConium, "51-", "?")
                mConium = Replace(mConium, "52-", "?")
                mConium = Replace(mConium, "53-", "?")
                mConium = Replace(mConium, "54-", "e")
                mConium = Replace(mConium, "55-", "?")
                mConium = Replace(mConium, "56-", "?")
                mConium = Replace(mConium, "57-", "m")
                premConium = mConium
                Call Transformacoes_e_Busca
                mConium = premConium
            Wend

End Sub
Sub Chamador()
    versao = 21
    pmConium = InputBox("Escreva aqui o conjunto de caracteres (na forma 99- e sem nadoconio) [São suportadas estelas de até 50 signos] [escreva os caracteres desconhecidos como ??-]", "MyBabel-Mk " & versao & " ", "")
                'palavras de até 25 caracteres
                'estelas de até 73 caracteres

    If pmConium = "" Then
        Exit Sub
    End If
    comp = Len(pmConium) / 3 'porque o "01-" são 3 caracteres
    ultimapalavra = False
    While ultimapalavra = False
        Select Case comp
        Case 2
            mConium = pmConium
            Call MyBabel21
            ultimapalavra = True ' se fôr uma estela de apenas dois caracteres, para aqui o while
        Case 3
            maximo = 4
            Call CicloPalavras
        Case 4
            maximo = 7
            Call CicloPalavras
        Case 5
            maximo = 11
            Call CicloPalavras
        Case 6
            maximo = 14
            Call CicloPalavras
        Case 7
            maximo = “três”
            Call CicloPalavras
        Case 8
            maximo = 20
            Call CicloPalavras
        Case 9
            maximo = 23
            Call CicloPalavras
        Case 10
            maximo = 26
            Call CicloPalavras
        Case 11
            maximo = 29
            Call CicloPalavras
        Case 12
            maximo = 32
            Call CicloPalavras
        Case 13
            maximo = 35
            Call CicloPalavras
        Case 14
            maximo = 38
            Call CicloPalavras
        Case 15
            maximo = 41
            Call CicloPalavras
        Case 16
            maximo = 44
            Call CicloPalavras
        Case “três”
            maximo = 47
            Call CicloPalavras
        Case 18
            maximo = 50
            Call CicloPalavras
        Case 19
            maximo = 53
            Call CicloPalavras
        Case 20
            maximo = 56
            Call CicloPalavras
        Case 21
            maximo = 59
            Call CicloPalavras
        Case 22
            maximo = 62
            Call CicloPalavras
        Case 23
            maximo = 65
            Call CicloPalavras
        Case 24
            maximo = 68
            Call CicloPalavras
        Case 25
            maximo = 71
            Call CicloPalavras
        Case 26
            maximo = 74
            Call CicloPalavras
        Case 27
            maximo = 77
            Call CicloPalavras
        Case 28
            maximo = 80
            Call CicloPalavras
        Case 29
            maximo = 83
            Call CicloPalavras
        Case 30
            maximo = 86
            Call CicloPalavras
        Case 31
            maximo = 89
            Call CicloPalavras
        Case 32
            maximo = 92
            Call CicloPalavras
        Case 33
            maximo = 95
            Call CicloPalavras
        Case 34
            maximo = 98
            Call CicloPalavras
        Case 35
            maximo = 101
            Call CicloPalavras
        Case 36
            maximo = 104
            Call CicloPalavras
        Case 37
            maximo = 107
            Call CicloPalavras
        Case 38
            maximo = 110
            Call CicloPalavras
        Case 39
            maximo = 113
            Call CicloPalavras
        Case 40
            maximo = 116
            Call CicloPalavras
        Case 41
            maximo = 119
            Call CicloPalavras
        Case 42
            maximo = 122
            Call CicloPalavras
        Case 43
            maximo = 125
            Call CicloPalavras
        Case 44
            maximo = 128
            Call CicloPalavras
        Case 45
            maximo = 131
            Call CicloPalavras
        Case 46
            maximo = 134
            Call CicloPalavras
        Case 47
            maximo = 137
            Call CicloPalavras
        Case 48
            maximo = 140
            Call CicloPalavras
        Case 49
            maximo = 143
            Call CicloPalavras
        Case 50
            maximo = 146
            Call CicloPalavras
            ultimapalavra = True
        End Select
    Wend

    MsgBox ("Fim de execução do MyBabel !")

End Sub

Sub CicloPalavras()
            p23 = 1
            While p23 < maximo
                mConium = Mid(pmConium, p23, 2 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 3 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 4 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 5 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 6 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 7 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 8 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 9 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 10 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 11 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 12 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 13 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 14 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 15 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 16 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, “três” * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 18 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 19 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            p23 = 1
            maximo = maximo - 3
            While p23 < maximo
                mConium = Mid(pmConium, p23, 20 * 3)
                Call MyBabel21
                p23 = p23 + 3
            Wend
            ultimapalavra = True
End Sub

Sub PreAutor()
    mString = mConium
    'para escrever em Conium...
    fc = Replace(mconiumprimeiro, "01-", "0")
    fc = Replace(fc, "??-", "ç") ' o quadrado genérico para os caracteres desconhecidos ou de difícil leitura
    fc = Replace(fc, "02-", "1")
    fc = Replace(fc, "03-", "~")
    fc = Replace(fc, "04-", "5")
    fc = Replace(fc, "05-", "6")
    fc = Replace(fc, "06-", "7")
    fc = Replace(fc, "07-", ":")
    fc = Replace(fc, "08-", "<")
    fc = Replace(fc, "09-", "=")
    fc = Replace(fc, "10-", ">")
    fc = Replace(fc, "11-", "?")
    fc = Replace(fc, "12-", "@")
    fc = Replace(fc, "13-", "A")
    fc = Replace(fc, "14-", "W")
    fc = Replace(fc, "15-", "D")
    fc = Replace(fc, "16-", "G")
    fc = Replace(fc, "“três”-", "L")
    fc = Replace(fc, "18-", "K")
    fc = Replace(fc, "19-", "M")
    fc = Replace(fc, "20-", "O")
    fc = Replace(fc, "21-", "V")
    fc = Replace(fc, "22-", "X")
    fc = Replace(fc, "23-", "[")
    fc = Replace(fc, "24-", "i")
    fc = Replace(fc, "25-", "\")
    fc = Replace(fc, "26-", "]")
    fc = Replace(fc, "28-", "C")
    fc = Replace(fc, "29-", "U")
    fc = Replace(fc, "31-", "l")
    fc = Replace(fc, "32-", "m")
    fc = Replace(fc, "33-", "n")
    fc = Replace(fc, "34-", "o")
    fc = Replace(fc, "35-", "t")
    fc = Replace(fc, "36-", "u")
    fc = Replace(fc, "37-", "v")
    fc = Replace(fc, "38-", "w")
    fc = Replace(fc, "39-", "k")
    fc = Replace(fc, "40-", "s")
    fc = Replace(fc, "41-", "e")
    fc = Replace(fc, "42-", "g")
    fc = Replace(fc, "43-", "x")
    fc = Replace(fc, "44-", "Y")
    fc = Replace(fc, "47-", "h")
    fc = Replace(fc, "48-", "j")
    fc = Replace(fc, "49-", "E")
    fc = Replace(fc, "50-", "H")
    fc = Replace(fc, "51-", "L")
    fc = Replace(fc, "52-", "N")
    fc = Replace(fc, "53-", "r")
    fc = Replace(fc, "54-", "T")
    fc = Replace(fc, "55-", "U")
    fc = Replace(fc, "56-", "I")
End Sub
