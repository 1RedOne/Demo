Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form 


$Form.Text = "Form"
$Form.TopMost = $true
$Form.Width = 436
$Form.Height = 269

$label2 = New-Object system.windows.Forms.Label 
$label2.Text = "Type any computer name to test if it is on the network and can respond to ping"
$label2.AutoSize = $true
$label2.Width = 25
$label2.Height = 10
$label2.location = new-object system.drawing.point(15,23)
$label2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($label2) 

$textBox3 = New-Object system.windows.Forms.TextBox 
$textBox3.Text = "ComputerName"
$textBox3.Width = 160
$textBox3.Height = 20
$textBox3.location = new-object system.drawing.point(207,105)
$textBox3.Font = "Microsoft Sans Serif,10"

$Form.controls.Add($textBox3) 

$label4 = New-Object system.windows.Forms.Label 
$label4.Text = "Results will be listed here"
$label4.AutoSize = $true
$label4.Width = 25
$label4.Height = 10
$label4.location = new-object system.drawing.point(20,173)
$label4.Font = "Microsoft Sans Serif,10"

$Form.controls.Add($label4) 

$ping_computer_click =
{
 
    $ComputerName = $textBox3.Text
 
    if (Test-Connection $ComputerName -quiet -Count 1){
        Write-Host -ForegroundColor Green "Computer $ComputerName has network connection"
        $label4.ForeColor= "Green"
        $label4.Text = "System Successfully Pinged"
    }
    Else{
        Write-Host -ForegroundColor Red "Computer $ComputerName does not have network connection"
        $label4.ForeColor= "Red"
        $label4.Text = "System is NOT Pingable"
    }


#endregion
}



$button3 = New-Object system.windows.Forms.Button
$button3.Text = "Click to Ping"
$button3.Width = 120
$button3.Height = 30
$button3.Add_Click($ping_computer_click)
$button3.location = new-object system.drawing.point(241,141)
$button3.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($button3)



[void]$Form.ShowDialog()
$Form.Dispose()