Pod::Spec.new do |s|

    s.name         = 'HippoCallClient'
    s.version      = '0.0.1'
    s.summary      = 'Hippo Call Client'
    s.description  = 'Hippo Call Client to start video call and audio call'

    s.homepage     = 'www.jungleworks.com'
    s.license      = { :type => 'MIT', :file => 'FILE_LICENSE' }
    s.author       = { 'Vishaljhanjhri' => 'vishal.jhanjhri@jungleworks.com' }

    s.ios.deployment_target = '9.0'
    s.source       = { :git => 'https://git.clicklabs.in/publicrepos/Hippo-SDK-iOS.git', :tag => s.version }

    s.source_files  = 'HippoCallClient/**/*.{h,m,swift}'
    s.exclude_files = 'Classes/Exclude'

    # s.public_header_files = 'Classes/**/*.h'

    # s.resource  = 'icon.png'
    # s.resources = 'Resources/*.png'

    # s.preserve_paths = 'FilesToSave', 'MoreFilesToSave'

#    s.requires_arc = true
    s.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'No' }

    s.dependency 'GoogleWebRTC', '~> 1.1.24717'

end
