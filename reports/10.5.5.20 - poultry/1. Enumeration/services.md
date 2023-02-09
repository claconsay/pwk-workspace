
C:\Users\alex>wmic service get name,displayname,pathname,startmode |findstr /i "
auto" |findstr /i /v "c:\windows"
McAfee Agent Common Services                            macmnsvc
        "C:\Program Files\McAfee\Agent\macmnsvc.exe" /ServiceStart


                                                       Auto
McAfee Agent Service                                    masvc
        "C:\Program Files\McAfee\Agent\masvc.exe" /ServiceStart


                                                       Auto
McAfee Service Controller                               mfemms
        "C:\Program Files\Common Files\McAfee\SystemCore\mfemms.exe"


                                                       Auto
McAfee Endpoint Security Web Control Service            mfewc
        "C:\Program Files (x86)\McAfee\Endpoint Security\Web Control\mfewc.exe"


                                                       Auto
Puppet Agent                                            puppet
        C:\Puppet\Current Version\sys\ruby\bin\ruby.exe -rubygems "C:\Puppet\Cur
rent Version\service\daemon.rb"

                                                       Auto
VMware Alias Manager and Ticket Service                 VGAuthService
        "C:\Program Files\VMware\VMware Tools\VMware VGAuth\VGAuthService.exe"


                                                       Auto
VMware Tools                                            VMTools
        "C:\Program Files\VMware\VMware Tools\vmtoolsd.exe"


                                                       Auto

C:\Users\alex>