configuration Software
{
    Import-DscResource -ModuleName PsDesiredStateConfiguration
    Import-DscResource -Module xNodeJS

    node ("localhost")
    {
        xNodeJS NodeJSLatestStable {
            Ensure       = 'Present'
            MajorVersion = 'LatestStable'
            #MajorVersion = '16.13.0'
        }
    }
}