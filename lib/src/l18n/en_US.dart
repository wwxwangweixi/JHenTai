import 'dart:core';

class en_US {
  static Map<String, String> keys() {
    return {
      /// common
      'yes': 'Yes',
      'no': 'No',
      'cancel': "Cancel",
      'OK': "OK",
      'success': "Success",
      'error': "Error",
      'failed': "Failed",
      'reload': 'Reload',
      'noMoreData': 'No More Data',
      'noData': 'No Data',
      'operationFailed': 'Operation Failed',
      'needLoginToOperate': 'Need Log In To Operate',
      'hasCopiedToClipboard': "Has Copied To Clipboard",
      'networkError': "Network Error",
      'systemError': "System Error",
      'invalid': "Invalid",
      'internalError': "Internal Error",

      'home': "Home",
      'gallery': "Gallery",
      'setting': 'Setting',

      /// unlock page
      'localizedReason': 'Please authenticate to continue',
      'tap2Auth': 'Tap to Authenticate',

      /// start page
      'TapAgainToExit': 'Tap again to exit',

      /// update dialog
      'availableUpdate': 'Available Update!',
      'LatestVersion': 'Latest version',
      'CurrentVersion': 'Current version',
      'check': 'Check',
      'dismiss': 'Dismiss',

      /// login page
      'login': 'Login',
      'notLoggedIn': 'Login',
      'logout': 'Logout',
      'passwordLogin': 'Password Login',
      'cookieLogin': 'Cookie Login',
      'youHaveLoggedInAs': 'Hello:   ',
      'cookieIsBlack': 'Cookie is Black',
      'cookieFormatError': 'Cookie Format Error',
      'invalidCookie': 'Login failed or invalid cookie',
      'loginFail': 'Login Failed',
      'userName': 'UserName',
      'EHUser': 'EH User',
      'password': 'Password',
      'needCaptcha': 'Need captcha, please login via cookie or web again.',
      'userNameOrPasswordMismatch': 'Username or password mismatch',
      'copyCookies': 'Copy Cookies',
      'tap2Copy': 'Tap to copy',
      'webLoginIsDisabled': 'Web login is disabled on desktop',

      /// request
      'sadPanda': 'Sad Panda: No Data',

      /// gallery page
      'getGallerysFailed': "Get Gallerys Failed",
      'refreshGalleryFailed': 'Refresh Gallery Failed',
      'tabBarSetting': 'TabBar Setting',
      'jumpPageTo': 'Jump Page To',
      'range': 'Range',
      'current': 'Current',
      'galleryUrlDetected': 'Found Gallery Url in Clipboard',
      'galleryUrlDetectedHint': 'Tap to enter detail page',

      /// details page
      'read': 'Read',
      'download': 'Download',
      'favorite': 'Favorite',
      'rating': 'Rating',
      'torrent': 'Torrent',
      'archive': 'Archive',
      'statistic': 'Statistic',
      'similar': 'Similar',
      'downloading': "Downloading",
      'resume': "Resume",
      'pause': 'Pause',
      'finished': 'Finished',
      'update': 'Update',
      'submit': 'Submit',
      'chooseFavorite': 'Choose Favorite',
      'uploader': 'Uploader',
      'allComments': 'All Comments',
      'noComments': 'No Comments',
      'lastEditedOn': 'Last edited on',
      'getGalleryDetailFailed': 'Get Gallery Detail Failed',
      'invisible2User': 'This Gallery is invisible to You',
      'invisibleHints': 'This gallery is removed or unavailable.',
      'refreshGalleryDetailsFailed': 'Refresh Gallery Details Failed',
      'failToGetThumbnails': "Fail To Get Thumbnails",
      'favoriteGalleryFailed': "Favorite Gallery Failed",
      'ratingFailed': 'Rating Failed',
      'voteTagFailed': 'Vote Tag Failed',
      'beginToDownload': 'Begin To Download',
      'resumeDownload': 'Resume Download',
      'pauseDownload': 'Pause Download',
      'addNewTagSetSuccess': 'Add New Tag Set Success',
      'addNewWatchedTagSetSuccess': 'Add New Watched Tag Set Success',
      'addNewHiddenTagSetSuccess': 'Add New Hidden Tag Set Success',
      'addNewTagSetSuccessHint': 'You can check your tags at Setting->EH->My Tags',
      'addNewTagSetFailed': 'Add New Tag Set Failed',
      'VisitorStatistics': 'Visitor Statistics',
      'invisible2UserWithoutDonation': 'This gallery\'s stats is invisible to user without donation',
      'getGalleryStatisticsFailed': 'Get Gallery Statistics Failed',
      'totalVisits': 'Total Visits',
      'visits': 'Visits',
      'imageAccesses': 'Image Accesses',
      'period': 'Period',
      'ranking': 'Ranking',
      'score': 'Score',
      'NotOnTheList': 'Not on the list',
      'getGalleryArchiveFailed': 'Get Gallery Archive Failed',
      'parseGalleryArchiveFailed': 'Parse failed, make sure your [Archiver Settings] in e-hentai is [Manual Select, Manual Start (Default)]',
      'original': 'Original',
      'resample': 'Resample',
      'beginToDownloadArchive': 'Begin to Download Archive',
      'beginToDownloadArchiveHint': 'You can check progress at Download -> Archive',
      'updateGalleryError': 'Update Gallery Error',
      'thisGalleryHasANewVersion': 'This gallery has a new version',
      'hasUpdated': 'Has updated',
      'failedToDealWith': 'Failed to deal with',
      'hasDownloaded': 'Has downloaded',
      '410Hints': 'You have clocked too many downloaded bytes on this archive, and need to re-unlock of this archive to resume',

      /// comment page
      'newComment': 'New Comment',
      'commentTooShort': 'Comment is Too Short',
      'sendCommentFailed': 'Send Comment Failed',
      'voteCommentFailed': 'Vote Comment Failed',
      'unknownUser': 'Unknown User',

      /// EHImage
      'reloadImage': "Reload Image",

      /// read page
      'parsingPage': "Parsing Page",
      'parsingURL': "Parsing URL",
      'parsePageFailed': "Parse Page Failed",
      'parseURLFailed': "Parse URL Failed",
      'loading': "Loading",
      'paused': 'Paused',
      'exceedImageLimits': "Exceed Image Limits",
      'unsupportedImagePageStyle': "JHenTai doesn't support Multi-Page Viewer(MPV), please change to default style in e-hentai.org",
      'toNext': 'To next',
      'toPrev': 'To prev',
      'back': 'Back',
      'toggleMenu': 'Toggle menu',

      /// setting page
      'account': 'Account',
      'EH': 'EH',
      'style': 'Style',
      'network': 'network',
      'mouseWheel': 'Mouse Wheel',
      'advanced': 'Advanced',
      'security': 'Security',
      'about': 'About',
      'accountSetting': 'Account Setting',
      'styleSetting': 'Style Setting',
      'advancedSetting': 'Advanced Setting',
      'securitySetting': 'Security Setting',
      'ehSetting': 'EH Site Setting',
      'readSetting': 'Read Setting',
      'downloadSetting': 'Download Setting',
      'networkSetting': 'Network Setting',
      'mouseWheelSetting': 'Mouse Wheel Setting',

      /// eh setting page
      'site': 'Site',
      'redirect2Eh': 'Redirect to EH if available',
      'siteSetting': 'Site Setting',
      'redirect2EH': 'Redirect to EH site if Available',
      'redirect2Hints': 'Will try to parse EH site first',
      'pleaseLogInToOperate': 'Please Log In To Operate',
      'imageLimits': 'Image Limits',

      /// tag setting page
      'myTags': 'My Tags',
      'myTagsHint': 'manage watched and hidden tags',
      'getTagSetFailed': 'Get Tag Set Failed',
      'updateTagSetFailed': 'Update Tag Set Failed',
      'deleteTagSetSuccess': 'Delete Tag Set Success',
      'deleteTagSetFailed': 'Delete Tag Set Failed',

      /// Layout
      'layoutMode': 'Layout Mode',
      'mobileLayoutV2Name': 'Mobile',
      'mobileLayoutV2Desc': 'Single column',
      'mobileLayoutName': 'Mobile(old)',
      'mobileLayoutDesc': 'Maintenance stopped',
      'tabletLayoutV2Name': 'Tablet',
      'tabletLayoutV2Desc': 'Double column',
      'tabletLayoutName': 'Tablet(old)',
      'tabletLayoutDesc': 'Maintenance stopped',
      'desktopLayoutName': 'Desktop',
      'desktopLayoutDesc': 'Double column with left tab bar, supports keyboard',

      /// style setting page
      'enableTagZHTranslation': 'Translate Tag Name into Chinese',
      'version': 'Version',
      'downloadTagTranslationHint': 'Downloading data..., downloaded: ',
      'themeMode': 'Theme Mode',
      'dark': 'Dark',
      'light': 'Light',
      'followSystem': 'Follow System',
      'listStyle': 'Gallery List Style',
      'flat': 'Flat',
      'listWithoutTags': 'Card(Without Tags)',
      'listWithTags': 'Card',
      'waterfallFlowWithImageOnly': 'Waterfall Flow(Image Only)',
      'waterfallFlowWithImageAndInfo': 'Waterfall Flow',
      'coverStyle': 'Cover Style',
      'cover': 'Cover',
      'adaptive': 'Adaptive',
      'enableQuickSearchDrawerGesture': 'Enable QuickSearch Drawer Gesture',

      /// mouse wheel setting page
      'wheelScrollSpeed': 'Wheel scroll speed',
      'ineffectiveInGalleryPage': 'Ineffective in gallery page now.',

      /// advanced setting page
      'enableDomainFronting': 'Enable Domain Fronting',
      'bypassSNIBlocking': 'Bypass SNI blocking',
      'hostMapping': 'Host Mapping',
      'hostMappingHint': 'Used for domain fronting',
      'proxyAddress': 'Proxy Address',
      'proxyAddressHint': 'If you use proxy server, make sure to set it up correctly',
      'saveSuccess': 'Save success',
      'updateSuccess': 'Update success',
      'connectTimeout': 'Connect Timeout',
      'receiveTimeout': 'Receive Data Timeout',
      'pageCacheMaxAge': 'Page Cache Max Age',
      'pageCacheMaxAgeHint': 'You can update cache by refresh page',
      'oneMinute': '1 Minute',
      'tenMinute': '10 Minute',
      'oneHour': '1 Hour',
      'oneDay': '1 Day',
      'threeDay': '3 Day',
      'enableLogging': 'Enable Logging',
      'enableVerboseLogging': 'Enable Verbose Logging',
      'openLog': 'Open Log',
      'clearLogs': 'Clear Logs',
      'clearImagesCache': 'Clear Images Cache',
      'longPress2Clear': 'Long press to clear',
      'checkUpdateAfterLaunchingApp': 'Check update after launching app',
      'clearPageCache': 'Clear Page Cache',
      'clearSuccess': 'Clear Success',

      /// host mapping page
      'hostDataSource': 'No need to change by default.\nData source: https://dns.google/',

      /// security setting page
      'enableFingerPrintLock': 'Enable FingerPrint Lock',
      'enableBlurBackgroundApp': 'Enable Blur Page When Switch to Background',

      /// read setting page
      'enableImmersiveMode': 'Enable Immersive Mode',
      'enableImmersiveHint': 'Hide System Bar',
      'readDirection': 'Read Direction',
      'showThumbnails': 'Show Thumbnails',
      'showStatusInfo': 'Show Status at Bottom',
      'autoModeInterval': 'Turn Page Interval in Auto Mode',
      'autoModeStyle': 'Auto mode style',
      'scroll': 'Scroll',
      'turnPage': 'Turn page',
      'top2bottom': 'Top to Bottom',
      'left2right': 'Left to Right',
      'right2left': 'Right to Left',
      'enablePageTurnAnime': 'Enable Turn Page Animation',
      'enableDoubleTapToScaleUp': 'Enable Double Tap to Scale up',
      'turnPageMode': 'Turn Page Mode',
      'turnPageModeHint': 'To next screen or next image',
      'image': 'Image',
      'screen': 'Screen',
      'preloadDistanceInOnlineMode': 'Preload Distance(Online)',
      'ScreenHeight': 'Screen',
      'preloadPageCount': 'Preload Page Count',
      'continuousScroll': 'Continuous Scroll',
      'continuousScrollHint': 'Splice multiple images',
      'doubleColumn': 'Double Column',
      'enableAutoScaleUp': 'Enable Auto Scale up Long Image',
      'enableAutoScaleUpHints': 'Make image width same as screen width',

      /// log page
      'logList': 'Log List',

      /// download page
      'local': 'Local',
      'reDownload': 'Re-download',
      'delete': 'Delete',
      'deleteTask': 'Delete Task Only',
      'deleteTaskAndImages': 'Delete Task And Images',
      'unlocking': 'unlocking',
      'parsingDownloadPageUrl': 'Parsing download page url',
      'parsingDownloadUrl': 'Parsing download url',
      'downloaded': 'Downloaded',
      'downloadFailed': 'DownloadFailed',
      'unpacking': 'Unpacking',
      'completed': 'Completed',
      'needReUnlock': 'Need Re-Unlock',
      'reUnlock': 'Re-Unlock',
      'reUnlockHint': 'Attention! Re-unlock need to buy this archive again.',
      'downloadHelpInfo': 'If you can\'t download and find errors like table doesn\'t exist in logs, please uninstall current app and re-install.',
      'localGalleryHelpInfo':
          'Load gallerys which is not downloaded by JHenTai. All you need is to move gallery directory to JHenTai download path and refresh.',
      'priority': 'Priority',
      'highest': 'Highest',
      'default': 'Default',
      'newGalleryCount': 'New gallery count',

      /// search dialog
      'searchConfig': 'Search Config',
      'addTabBar': 'Add Tab Bar',
      'updateTabBar': 'Update Tab Bar',
      'addQuickSearch': 'Add',
      'updateQuickSearch': 'Update',
      'filter': 'Filter',
      'tabBarName': 'TabBar Name',
      'quickSearchName': 'Name',
      'pleaseInputValidName': 'Please input valid name',
      'sameNameExists': 'Same name exists',
      'searchType': 'Search Type',
      'popular': 'Popular',
      'ranklist': 'Ranklist',
      'ranklistBoard': 'Ranklist',
      'watched': 'Watched',
      'history': 'History',
      'keyword': 'Keyword',
      'searchGalleryName': 'Search Gallery Name',
      'searchGalleryTags': 'Search Gallery Tags',
      'searchGalleryDescription': 'Search Gallery Description',
      'searchExpungedGalleries': 'Search Expunged Galleries',
      'onlyShowGalleriesWithTorrents': 'Only Show Galleries With Torrents',
      'searchLowPowerTags': 'Search LowPower Tags',
      'searchDownVotedTags': 'Search DownVoted Tags',
      'pageAtLeast': 'Page At Least',
      'pageAtMost': 'Page At Most',
      'pagesBetween': 'Pages Between',
      'to': 'to',
      'minimumRating': 'Minimum Rating',
      'disableFilterForLanguage': 'Disable Filter For Language',
      'disableFilterForUploader': 'Disable Filter For Uploader',
      'disableFilterForTags': 'Disable Filter For Tags',
      'searchName': 'Search Name',
      'searchTags': 'Search Tags',
      'searchNote': 'Search Note',
      'allTime': 'All',
      'year': 'Year',
      'month': 'Mon',
      'day': 'Day',

      /// popular page
      'getPopularListFailed': 'Get Popular List Failed',

      /// ranklist page
      'getRanklistFailed': 'Get Ranklist Failed',
      'getSomeOfGallerysFailed': 'Get Some of Gallerys Failed',

      /// history page
      'getHistoryGallerysFailed': 'Get Some of History Gallerys Failed',

      /// search page
      'search': 'Search',
      'searchFailed': 'Search Failed',
      'fileSearchFailed': 'File Search Failed',

      /// about page
      'author': 'Author',

      /// download setting page
      'downloadPath': 'Download Path',
      'changeDownloadPathHint':
          'Long press to change. Change download path will copy downloaded gallerys automatically and keep old files. If you find it fails to load image, try to reset path.',
      'resetDownloadPath': 'Reset Download Path',
      'downloadOriginalImage': 'Download Original Image',
      'never': 'Never',
      'manual': 'Manual',
      'always': 'Always',
      'longPress2Reset': 'Long Press to Reset',
      'needPermissionToChangeDownloadPath': 'Need permission to change download path',
      'invalidPath': 'Invalid Path. Avoid using system path, root path or sd card path.',
      'downloadTaskConcurrency': 'Download Concurrency',
      'needRestart': 'Need restart',
      'speedLimit': 'Speed Limit',
      'speedLimitHint': 'Don\'t download too fast',
      'per': 'per',
      'images': 'images',
      'downloadTimeout': 'Download Timeout',
      'downloadInOrder': 'Download in order of task created time',
      'enableStoreMetadataForRestore': 'Enable Store Metadata for Restore',
      'enableStoreMetadataForRestoreHint': 'If disable this, you can\'t restore download tasks',
      'restoreDownloadTasks': 'Restore Download Tasks',
      'restoreDownloadTasksHint': 'Restore download tasks by metadata',
      'restoreDownloadTasksSuccess': 'Restore Download Tasks Success',
      'restoredCount': 'Restored task count',
      'restoredGalleryCount': 'Restored gallery count',
      'restoredArchiveCount': 'Restored archive count',

      /// quick search page
      'quickSearch': 'Quick Search',

      /// dashboard page
      'seeAll': 'All',
      'newest': 'Newest',

      /// tag namespace
      'language': 'Language',
      'artist': 'Artist',
      'character': 'Character',
      'female': 'Female',
      'male': 'Male',
      'parody': 'Parody',
      'group': 'Group',
      'mixed': 'Mixed',
      'Coser': 'Coser',
      'cosplayer': 'Cosplayer',
      'reclass': 'Reclass',
      'temp': 'Temp',
      'other': 'Other',
    };
  }
}
