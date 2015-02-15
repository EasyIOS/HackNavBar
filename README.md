#HackNavBar

Custom the NavgationBar in EasyIOS with A hack way

系统导航条经常会出现各种问题，尤其需要透明导航条的时候，会出现很多棘手的问题。一般的解决方式就是自定义一个导航条
本项目通过重载以下4个方法来实现导航条的自定义。

	    [$ swizzleMethod:@selector(setTitle:) with:@selector(nav_setTitle:) in:[Scene class]];
	    [$ swizzleMethod:@selector(showBarButton:button:) with:@selector(nav_showBarButton:button:) in:[Scene class]];
	    [$ swizzleMethod:@selector(setTitleView:) with:@selector(nav_setTitleView:) in:[Scene class]];
	    self.title = @"title";

导入本项目的文件后会自动开启自定义导航条模式，并且隐藏系统导航条。
在项目中如果设置导航条按钮使用的是以上4个方法的话 就可以直接实现零代码切换。