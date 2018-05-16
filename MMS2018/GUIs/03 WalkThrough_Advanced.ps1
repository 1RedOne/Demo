    #ERASE ALL THIS AND PUT XAML BELOW between the @" "@ 
$inputXML = @"
<Window x:Class="Online_Tester.Window1"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:Online_Tester"
        mc:Ignorable="d"
        Title="FoxDeploy IT Tools" Height="352" Width="544" Background="#FF52526A">

    <Grid>
        <TabControl x:Name="tabControl" Foreground="#FF3A3A61" BorderBrush="#FF707092" Background="#FF1A1A1A">
            <TabControl.Resources>
                <Style TargetType="TabItem">
                    <Setter Property="Template">
                        <Setter.Value>
                            <ControlTemplate TargetType="TabItem">
                                <Grid Name="Panel">
                                    <ContentPresenter x:Name="ContentSite"
                                        VerticalAlignment="Center"
                                        HorizontalAlignment="Center"
                                        ContentSource="Header"
                                        Margin="10,2"/>
                                </Grid>
                                <ControlTemplate.Triggers>
                                    <Trigger Property="IsSelected" Value="True">
                                        <Setter TargetName="Panel" Property="Background" Value="LightSkyBlue" />
                                    </Trigger>
                                    <Trigger Property="IsSelected" Value="False">
                                        <Setter TargetName="Panel" Property="Background" Value="White" />
                                    </Trigger>
                                </ControlTemplate.Triggers>
                            </ControlTemplate>
                        </Setter.Value>
                    </Setter>
                </Style>
            </TabControl.Resources>
            <TabItem Header="Test Computer" Background="#FF707092" BorderBrush="#FF1A1A1A" Height="20" VerticalAlignment="Bottom">
                <Grid Background="#707092">

                    <TextBlock TextWrapping="WrapWithOverflow" VerticalAlignment="Top" Height="89" Width="314" Background="#00000000" Foreground="#FFFFF7F7" Margin="22,21,101,0" >
    This is the FoxDeploy official Awesome Tool.  To begin using this tool, first verify that a system if online, and then progress to any of the above tabs.


                    </TextBlock>

                    <TextBox x:Name="ComputerName" TextWrapping="Wrap" HorizontalAlignment="Left" Height="32" Margin="21,142,0,0" Text="TextBox" VerticalAlignment="Top" Width="135" FontSize="14.667"/>
                    <Button x:Name="TestOnline" Content="Verify Online" HorizontalAlignment="Left" Margin="174,142,0,0" VerticalAlignment="Top" Width="93" Height="32"/>
                    <Image x:Name="image1" Stretch="UniformToFill" HorizontalAlignment="Left" Height="80" Margin="10,174,0,0" VerticalAlignment="Top" Width="245" Source="C:\Users\Stephen\Dropbox\Speaking\Demos\module 13\Foxdeploy_DEPLOY_large.png"/>
                </Grid>
            </TabItem>
            <TabItem Header="System Info" Background="#FF707092" BorderBrush="#FF1A1A1A" IsEnabled="False">
                <Grid Background="#707092" Margin="0,2,0,-2">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="193*"/>
                        <ColumnDefinition Width="244*"/>
                    </Grid.ColumnDefinitions>
                    <ListView x:Name="listView" HorizontalAlignment="Left" Height="156" Margin="10,97,-84,0" VerticalAlignment="Top" Width="511" FontSize="16" Grid.ColumnSpan="2">
                        <ListView.View>
                            <GridView>
                                <GridViewColumn Header="Drive Letter" Width="AUTO" DisplayMemberBinding="{Binding 'Drive Letter'}" />
                                <GridViewColumn Header="Drive Label" Width="AUTO" DisplayMemberBinding="{Binding 'Drive Label'}"/>
                                <GridViewColumn Header="Size(MB)" Width="AUTO" DisplayMemberBinding="{Binding 'Size(MB)'}"/>
                                <GridViewColumn Header="FreeSpace%" Width="AUTO"/>
                            </GridView>
                        </ListView.View>
                    </ListView>
                    <Image x:Name="image2" Stretch="UniformToFill" HorizontalAlignment="RIGHT" Height="80" Margin="0,10,20,0" VerticalAlignment="Top" Width="245" Source="C:\Users\Stephen\Dropbox\Speaking\Demos\module 13\Foxdeploy_DEPLOY_large.png" Grid.ColumnSpan="2"/>
                    <Button x:Name="LoadDiskbutton" Content="Load Information" HorizontalAlignment="Left" Height="37" Margin="10,21,0,0" VerticalAlignment="Top" Width="92"/>
                    <RadioButton x:Name="radioButton" Content="Disk Info" HorizontalAlignment="Left" Margin="126,19,0,0" VerticalAlignment="Top"/>
                    <RadioButton x:Name="radioButton_Copy" Content="CPU Info" HorizontalAlignment="Left" Margin="126,36,0,0" VerticalAlignment="Top"/>
                    <RadioButton x:Name="radioButton_Copy1" Content="General Info" HorizontalAlignment="Left" Margin="126,51,0,0" VerticalAlignment="Top" RenderTransformOrigin="0.476,0.067"/>
                </Grid>
            </TabItem>
            <TabItem Header="Services" Background="#FF707092" BorderBrush="#FF1A1A1A" IsEnabled="False">
                <Grid Background="#707092">
                    <Grid.ColumnDefinitions>
                        <ColumnDefinition Width="137*"/>
                        <ColumnDefinition Width="128*"/>
                    </Grid.ColumnDefinitions>
                    <Image x:Name="image3" Stretch="UniformToFill" HorizontalAlignment="RIGHT" Height="80" Margin="0,10,20,0" VerticalAlignment="Top" Width="245" Source="C:\Users\Stephen\Dropbox\Speaking\Demos\module 13\Foxdeploy_DEPLOY_large.png" Grid.ColumnSpan="2"/>
                    <Button x:Name="LoadServiceButton" Content="Load Services" HorizontalAlignment="Left" Height="37" Margin="10,21,0,0" VerticalAlignment="Top" Width="92"/>
                    <ListView x:Name="listView_Copy" HorizontalAlignment="Left" Height="156" Margin="10,97,0,0" VerticalAlignment="Top" Width="511" FontSize="16" Grid.ColumnSpan="2">
                        <ListView.View>
                            <GridView>
                                <GridViewColumn Header="Service Name" Width="105" DisplayMemberBinding="{Binding Drive Letter}" />
                                <GridViewColumn Header="Status" Width="AUTO" DisplayMemberBinding="{Binding Drive Label}"/>
                                <GridViewColumn Header="AutoStart?" Width="105" DisplayMemberBinding="{Binding Size(MB)}"/>
                                <GridViewColumn Header="Account Used" Width="135"/>
                            </GridView>
                        </ListView.View>
                    </ListView>
                    <Button x:Name="LoadProcessesButton_Copy2" Content="Start Service" HorizontalAlignment="Left" Height="19" Margin="127,21,0,0" VerticalAlignment="Top" Width="92"/>
                    <Button x:Name="LoadProcessesButton_Copy3" Content="Stop Service" HorizontalAlignment="Left" Height="19" Margin="127,43,0,0" VerticalAlignment="Top" Width="92"/>
                </Grid>
            </TabItem>
            <TabItem Header="Processes" Background="#FF707092" BorderBrush="#FF1A1A1A" IsEnabled="False">
                <Grid Background="#707092">
                    <Image x:Name="image4" Stretch="UniformToFill" HorizontalAlignment="RIGHT" Height="80" Margin="0,10,20,0" VerticalAlignment="Top" Width="245" Source="C:\Users\Stephen\Dropbox\Speaking\Demos\module 13\Foxdeploy_DEPLOY_large.png"/>
                    <Button x:Name="LoadProcessesButton" Content="Load Processes" HorizontalAlignment="Left" Height="37" Margin="10,21,0,0" VerticalAlignment="Top" Width="92"/>
                    <ListView x:Name="listView_Copy1" HorizontalAlignment="Left" Height="156" Margin="10,97,0,0" VerticalAlignment="Top" Width="511" FontSize="16">
                        <ListView.View>
                            <GridView>
                                <GridViewColumn Header="Process Name" Width="110" DisplayMemberBinding="{Binding Drive Letter}" />
                                <GridViewColumn Header="CPU%" Width="AUTO" DisplayMemberBinding="{Binding Drive Label}"/>
                                <GridViewColumn Header="RAM(MB)" Width="75" DisplayMemberBinding="{Binding Size(MB)}"/>
                                <GridViewColumn Header="RAM(VM)" Width="75"/>
                            </GridView>
                        </ListView.View>
                    </ListView>
                    <Button x:Name="LoadProcessesButton_Copy" Content="Start Process" HorizontalAlignment="Left" Height="19" Margin="127,21,0,0" VerticalAlignment="Top" Width="92"/>
                    <Button x:Name="LoadProcessesButton_Copy1" Content="Stop Process" HorizontalAlignment="Left" Height="19" Margin="127,43,0,0" VerticalAlignment="Top" Width="92"/>
                </Grid>
            </TabItem>
        </TabControl>
        <StatusBar Height="25" Margin="0,244,0,0" VerticalAlignment="Bottom" Background="#FF242450">
            <Separator/>
            <TextBlock x:Name="Status_textBlock" TextWrapping="Wrap" Text="Status : " Foreground="#FF9999B0"/>
        </StatusBar>
        <Image x:Name="image" HorizontalAlignment="Left" Height="100" Margin="-265,163,0,0" VerticalAlignment="Top" Width="100"/>

    </Grid>
</Window>


"@ 

$inputXML = $inputXML -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML
#Read XAML

    $reader=(New-Object System.Xml.XmlNodeReader $xaml) 
  try{$Form=[Windows.Markup.XamlReader]::Load( $reader )}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    write-host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*"){
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"}
}
catch{#if it broke some other way :D
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
        }

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================

$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "WPF$($_.Name)" -Value $Form.FindName($_.Name)}

Function Get-FormVariables{
if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
get-variable WPF*
}

Get-FormVariables

#===========================================================================
# Use this space to add code to the various form elements in your GUI
#===========================================================================
                                                                   
    
#Reference 

#Adding items to a dropdown/combo box
    #$vmpicklistView.items.Add([pscustomobject]@{'VMName'=($_).Name;Status=$_.Status;Other="Yes"})
    
#Setting the text of a text box to the current PC name    
    #$WPFtextBox.Text = $env:COMPUTERNAME
    
#Adding code to a button, so that when clicked, it pings a system
# $WPFbutton.Add_Click({ Test-connection -count 1 -ComputerName $WPFtextBox.Text
# })

Function Show-Popup{


    #ERASE ALL THIS AND PUT XAML BELOW between the @" "@ 
$inputXML2 = @"
<Window x:Class="Online_Tester.Processes"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:Online_Tester"
        mc:Ignorable="d"
        Title="Which Process to start?" Height="240" Width="413">
    <Grid Background="#707092">
        <TextBlock TextWrapping="Wrap" VerticalAlignment="Top" Height="89" Width="314" Background="#00000000" Foreground="#FFFFF7F7" Margin="22,21,101,0" ><Run Text="Please provide the name of the process you would like to start on the remote machine"/></TextBlock>

        <Image x:Name="image" HorizontalAlignment="Left" Height="100" Margin="22,138,0,-29" VerticalAlignment="Top" Width="100" Source="C:\Users\Stephen\Dropbox\Speaking\Demos\module 13\Foxdeploy_FOX.png"/>
        <TextBox x:Name="ProcessName" HorizontalAlignment="Left" Height="32" Margin="22,90,0,0" TextWrapping="Wrap" Text="TextBox" VerticalAlignment="Top" Width="130"/>
        <Button x:Name="StartProcess" Content="Button" HorizontalAlignment="Left" Height="32" Margin="188,90,0,0" VerticalAlignment="Top" Width="86"/>
        <TextBlock TextWrapping="Wrap" Name='text' VerticalAlignment="Top" Height="68" Visibility="Hidden" Background="#00000000" Foreground="#FFFFF7F7" Margin="156,127,102,0" ><Run Text="Remote Machine: $PCName
                                                                                                                                                      Process Name: $ProcName
                                                                                                                                                      Status: $status"/></TextBlock>
    </Grid>
</Window>


"@ 

$inputXML2 = $inputXML2 -replace 'mc:Ignorable="d"','' -replace "x:N",'N' -replace '^<Win.*', '<Window'
[void][System.Reflection.Assembly]::LoadWithPartialName('presentationframework')
[xml]$XAML = $inputXML2
#Read XAML

    $reader=(New-Object System.Xml.XmlNodeReader $xaml) 
  try{$Popup=[Windows.Markup.XamlReader]::Load( $reader )}
catch [System.Management.Automation.MethodInvocationException] {
    Write-Warning "We ran into a problem with the XAML code.  Check the syntax for this control..."
    write-host $error[0].Exception.Message -ForegroundColor Red
    if ($error[0].Exception.Message -like "*button*"){
        write-warning "Ensure your &lt;button in the `$inputXML does NOT have a Click=ButtonClick property.  PS can't handle this`n`n`n`n"}
}
catch{#if it broke some other way :D
    Write-Host "Unable to load Windows.Markup.XamlReader. Double-check syntax and ensure .net is installed."
        }

#===========================================================================
# Store Form Objects In PowerShell
#===========================================================================

$xaml.SelectNodes("//*[@Name]") | %{Set-Variable -Name "POP$($_.Name)" -Value $Popup.FindName($_.Name)}

Function Get-FormVariables{
if ($global:ReadmeDisplay -ne $true){Write-host "If you need to reference this display again, run Get-FormVariables" -ForegroundColor Yellow;$global:ReadmeDisplay=$true}
write-host "Found the following interactable elements from our form" -ForegroundColor Cyan
get-variable WPF*
}

Get-FormVariables

#===========================================================================
# Use this space to add code to the various form elements in your GUI
#===========================================================================
                                                                   
    
#Reference 

#Adding items to a dropdown/combo box
    #$vmpicklistView.items.Add([pscustomobject]@{'VMName'=($_).Name;Status=$_.Status;Other="Yes"})
    
#Setting the text of a text box to the current PC name    
    #$PoptextBox.Text = $env:COMPUTERNAME
    
#Adding code to a button, so that when clicked, it pings a system
# $Popbutton.Add_Click({ Test-connection -count 1 -ComputerName $PoptextBox.Text
# })

$PopStartProcess.Add_Click({

Invoke-Command  -ScriptBlock {start-process $PopProcessName.text -PassThru}



})

#===========================================================================
# Shows the form
#===========================================================================
write-host "To show the form, run the following" -ForegroundColor Cyan
$Popup.ShowDialog() | out-null


}


Function Get-DiskInfo {
param($computername =$env:COMPUTERNAME)
 
Get-WMIObject Win32_logicaldisk -ComputerName $computername | Select-Object @{Name='ComputerName';Ex={$computername}},`
                                                                    @{Name=‘Drive Letter‘;Expression={$_.DeviceID}},`
                                                                    @{Name=‘Drive Label’;Expression={$_.VolumeName}},`
                                                                    @{Name=‘Size(MB)’;Expression={[int]($_.Size / 1MB)}},`
                                                                    @{Name=‘FreeSpace%’;Expression={[math]::Round($_.FreeSpace / $_.Size,2)*100}}
                                                                 }
                                                                  
$WPFComputerName.Text = $env:COMPUTERNAME


$WPFTestOnline.Add_Click({
    $WPFStatus_textBlock.Text = "Status : Offline"
    Start-sleep -Milliseconds 400
    if (Test-Connection $WPFComputerName.Text -Count 3 -Quiet){
        $WPFStatus_textBlock.Text = "Status : Online"
        ForEach ($item in $WPFtabControl.Items){$item.IsEnabled = $true}
}
        else{$WPFStatus_textBlock.Text = "Status : Offline"

            }
    })


$WPFLoadDiskbutton.Add_Click({
    Get-DiskInfo -computername $WPFComputerName.Text | ForEach-Object {
            $WPFlistView.AddChild($_)
            }
    })

$WPFLoadProcessesbutton.Add_Click({
    
    Show-Popup


    })

#===========================================================================
# Shows the form
#===========================================================================
write-host "To show the form, run Show-Form" -ForegroundColor Cyan


$Form.ShowDialog() | out-null


