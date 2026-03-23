+F5::Edit ; Shift-F5 launches the current AutoHotkey script in preferred editor, else Notepad 
^F5::Reload ; Ctrl-F5 reloads the current AutoHotKey script after any edits.



; Hotkey: Ctrl+Shift+V to process and paste into form
^+v::
    ; Save current clipboard
    ClipSaved := ClipboardAll
    Send ^c
    ClipWait, 1
    text := Clipboard

    ; Split by commas and trim spaces
    items := StrSplit(text, ",")

    ; Loop through each item and type it into the form
    for index, item in items {
        item := Trim(item)
        ; Send raw text so #, ^, !, + are NOT treated as modifiers
        SendInput {Text}%item%
        if (index < items.Length()) {
            SendInput {Tab}  ; Move to next field
        }
    }

    ; Restore original clipboard
    Clipboard := ClipSaved
return




^numpad0:: send, 
(
{(}confidential{)} <br>
-- <U>MIB</u>: <U>IRIX</u>:  <br>
-- <u>Rx</u>:   <br>
-- <u>Med data</u>:  <br> 
{enter}
{(}confidential{)} <br>
--  <br>
--  <br>
-- <U>bene</u>:, <u>occ</u>: , <u>AI</u> K, <u>NW</u> K <br>
-- <u>Hx</u>:  <u>LOV</u>: <U>provider</u>: <br>
-- Qtd  Max Table 
<BR> -- <U>Total risk</u>: K,  <u>age/face risk</u>: 
{enter}
(Confidential)
<BR><B>O:</b> IR
<BR><B>R:</b>
<BR><B>A:</b>
<BR><B>O: </b>

)
return

^numpad1:: send, 
(
{(}confidential{)} <br>
-- <U>MIB</u>: <U>IRIX</u>:  <br>
-- <u>Rx</u>:   <br>
-- <u>Med data</u>:  <br> 
{enter}
{(}confidential{)} <br>
--  <br>
--  <br>
-- <u>o/p/b</u>: <br>
-- parent signed app and hipaa <br>
-- <u>Hx</u>:   <br>
-- Qtd std NT Max Table P 
<BR>-- <U>Total risk</u>: K,  <u>age/face risk</u>: 
{enter}
(Confidential)
<BR><B>O:</b> IR
<BR><B>R:</b>
<BR><B>A:</b>
<BR><B>O: </b>

)
return


^numpad2:: send, 
(
{(}confidential{)} <br>
-- <U>MIB</u>: <U>IRIX</u>:  <br>
-- <u>Rx</u>:   <br>
-- <u>Med data</u>:  <br> 
{enter}
{(}confidential{)} <br>
--  <br>
--  <br>
-- <u>o/p/b</u>:, parent covg, sibling covg, agt saw child <br>
-- parent signed app and hipaa <br>
-- <u>Hx</u>:   <u>LOV</u>: <U>provider</u>:  <br>
-- Qtd std NT Max Table P
<BR>-- <U>Total risk</u>: K,  <u>age/face risk</u>: 
{enter}
(Confidential)
<BR><B>O:</b> IR
<BR><B>R:</b>
<BR><B>A:</b>
<BR><B>O: </b>

)
return


^numpad3:: send,
(
{(}confidential{)} <B><FONT COLOR="{#}FF1694"> pinksheet</FONT> <FONT COLOR="{#}1F618D"><U>PAR</u></b></font> PARAMED: LOV 
<BR>--
)
return


^numpad4:: send,
(
Due to medical information from a prescription and medical claims database we will need medical records. Please give the name and contact information of the most recent proivder seen who would have the most complete records on the client. 
)
return

^numpad5:: send, 
(
Due to medical information obtained from a prescription and medical claims database, we have ordered an APS from
)
return

^NumpadDiv::

{

    today := A_Now

    finalDate := CalculateBusinessDays(today, 10)

    ; Format the final date as mm/d/yyyy

    FormatTime, formattedDate, %finalDate%, M/d/yyyy

    ; Send the text with the calculated date

    Send,

    (

    Approved Table [letter and tobacco] due to [reason]. Please discuss with your client as final action will be processed on %formattedDate%. <b><I> Reminder: Offers with tobacco, table ratings and flat extras will reflect increases in premium. Please note that if the client accepts this offer and the policy is to be issued on PPSP, the middle section of the PPSP form will need to be completed prior to issue.

    )

    return

}

CalculateBusinessDays(startDate, businessDays) {

    ; Function to calculate a date that is n business days away

    ; Exclude weekends (Saturday and Sunday)

    daysCount := 0

    currentDate := startDate

    Loop

    {

        EnvAdd, currentDate, 1, Days

        FormatTime, dayNumber, %currentDate%, wDay

        ; Check if the day is a weekday (Monday to Friday)

        If (dayNumber >= 2 and dayNumber <= 6)

        {

            daysCount++

        }

        If (daysCount = businessDays)

            break

    }

    return currentDate

}
return

^numpad6:: send,
( 
Due to standard age/face requirements, we are ordering blood and HOS, please arrange. <b>Include the C14 number with the order to avoid delays in processing the application.</b>
)
return 


^numpad7:: send, 
(
 Due to information from {source}, we have ordered a phone interview. Applicant may call into ExamOne at 877-367-0191 to complete the interview. Otherwise, advise them to await call from ExamOne.

)
return

^numpad9:: send, 
(
Approved standard non-tobacco for $
)
return

^numpad8:: send,
(
Case has been referred for further review and should be updated within 3 business days. 
)
return

^numpadmult:: send, 
(
(Confidential)
<BR><B>O:</b> 
<BR><B>R:</b> 
<BR><B>A:</b> 
<BR><B>O: </b>
<BR> <a href="">Rate Cart</a>{up}{up}{up}{up}
)
return

^numpadsub:: send, 
(
(confidential) <u><FONT COLOR="{#}1F618D"> <B>BLOOD/HOS:</u></b> </FONT>  <br>
-- <u> lab slip </u>:  hr fast, hx:,   rx: <BR>
-- <u> urine</u> : sCr , PCR, cotinine neg <BR>
-- <U> blood </u> : a1c, BP, chol, HDL, trigs, chol ratio <BR>
-- <U> liver enzymes </u>: AST, ALT, GGT, Alk Phos <BR>
-- NT proBNP <BR>
<B> CMC total: </b> ,<B> CKD total: </b>
)
return



^numpadadd:: send, 
(
<B>DECLINE REASON</b>: <BR><B>DECLINE SOURCE</b>: 
) 
return

^numpaddot:: send, 
(
(Confidential) <U><FONT COLOR="{#}1F618D"> <B> APS </u></b></font>/APS  - <U><FONT COLOR="{#}1F618D"> records</u></font> : LOV, BP , CMC calc: + {enter}
<BR> --

) 
return


^F12:: send, 
(
<BR> --   
) 
return



^F10:: send, 
(
(confidential)
) 
return

^F9:: send, 
(
<B> ISSUE TEAM : </b>
) 
return


^F8:: send, 
(
<U>  </u>{left}{left}{left}{left} 
) 
return




^F6:: send, 
(

(confidential) <U><FONT COLOR="{#}1F618D"><B>  HOS: </u></b></FONT>   <br>
-- <u> lab slip </u>:  hr fast, hx:,   rx: , BP:<BR>
-- <u> urine</u> :  PCR, cotinine neg <BR>
<B> CMC total: </b> ,<B> CKD total: </b>
) 
return


^F4:: send, 
(
{tab}{tab}BL {down}{down}{tab}M{tab}nb{tab}Term Conversion{tab}A{tab}{tab}{tab}{tab}{tab}Term Conversion
) 
return


^F3:: send, 
(
<B><FONT COLOR="{#}FF1694">pinksheet</FONT></b>
) 
return

	
^up:: send, 
(
{tab}{tab}FU{tab}H{tab}fin{tab}DECLINE{tab}A{tab}{tab}{tab}{tab}{tab}DECLINE
) 
return


^left:: send, 
(
{tab}{tab}FU{tab}H{tab}fin{tab}ISSUE{tab}A{tab}{tab}{tab}{tab}{tab}ISSUE
) 
return

^right:: send,
(
{tab}{tab}FU{tab}h{tab}fin{tab}EIUL-ISSUE{tab}A{tab}{tab}{tab}{tab}{tab}EIUL-ISSUE
) 
return


^down:: send, 	
(
TQD91BY{tab}{tab}M{tab}ref{tab}Ref MD{tab}A{tab}{tab}{tab}{tab}{tab} MD Referral
) 
return

^F2:: send, 
(
agntd1g{tab}{tab}M{tab}ref{tab}Ref {tab}A{tab}{tab}{tab}{tab}{tab}Referral
)
return 

^F1:: send, 
(
<B>Issue Team:</B> Please switch final action case note type from Underwriting to Final Action Summary and issue when the replacement is in good order
)
return 

^PgDn:: send,
(
<BR> <a href="">Rate Cart</a>{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}
)
return



^PgUp:: send, 
(
Please advise the insurable interest of [person]. What loss would they suffer if the PI were to pass? Is the PI financially responsible for this person or vice versa?
)
return 

^home:: send, 
(
Q24 A-D of the suitability form were marked no and should have been marked yes. Please confirm the applicant understands the features of this policy, correct, and resubmit.
)
return 

^ins:: send, 
(
The grandparent signed the app and HIPAA. If they are the legal guardian of the child, please provide proof of legal permanent guardianship. Otherwise, please have the parent sign the app and HIPAA.
) 
return 







^del:: send, 	
(
We are trending towards a tentative Table rating due to , subject to review of all pending requirements.<b>  If this rating cannot be placed, please advise and we will cancel the application.</b>  Please note that this is NOT an offer for coverage.  The final decision is still under consideration and could result in a more adverse decision up to and including declination.  
) 
return


^F7:: send, 
(
{tab}{tab}FU{tab}m{tab}app{tab}Replacement Triage{tab}A{tab}{tab}{tab}{tab}{tab}triage
) 
return


+F1:: send,
(
Closed incomplete due to exceeding maximum time limit with nonreceipt of requested requirements.
) 
return 


+F2:: send,
(
Withdrawn per field request pending additional requirements. 
) 
return 

+F3:: send,
(
(confidential) <U> <B>ALPHA</b></u>:
<BR> -- 
) 
return 




+F6:: send, 
(
(confidential)
<BR>--<U><b><FONT COLOR="{#}16A085"> UNK  </u></b></FONT>: {left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}
) 
return 

+F7:: send, 
(
<BR>--<U><B><FONT COLOR="{#}16A085"> UNK </U></b></FONT>: {left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}
)
return 

+F8:: send, 
(
Due to information from {source}, we have ordered a phone interview. Applicant may call into ExamOne at 877-367-0191 to complete the interview. Otherwise, advise them to await call from ExamOne.
)
return 

+F9:: send, 
(
 (Confidential) <U><FONT COLOR="{#}1F618D"> <B> </u></b></FONT>: {left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}{left}
) 
return 


+F10:: send, 
(
If you would like us to present the case to our reinsurer, let us know within 10 bus days. Doing so would void the current offer; any subsequent offer would be subject to reinsurer determination, which may improve or worsen the offer (up to decline).

)
return 

+F11:: send, 
(
Please send records for the last 3 years including all lab results, test results, office visit notes, and office visits from any other provider that you have on record. 
) 
return 

+F12:: send,
(
Please correct Q5 A/B to including existing app  , have client initial, and resubmit.  
) 
return 

+numpad0:: send, 
(
Due to standard age/face requirements, we will require paramed, blood, and HOS, please arrange. <b>Include the C14 number with the order to avoid delays in processing the application.</b> 
) 
return 

+numpad1:: send,
(
Due to standard age/face requirements, we will require paramed and HOS, please arrange. <b>Include the C14 number with the order to avoid delays in processing the application.</b>
)
return



return



#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


