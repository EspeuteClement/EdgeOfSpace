/// @description Update window size and stuff

if  (_TargetZoomPrev != _TargetZoom 
	|| _IsFullscreenPrev != _IsFullscreen)
{
	_IsFullscreenPrev = _IsFullscreen;
	_TargetZoomPrev = _TargetZoom;

	window_set_fullscreen(_IsFullscreen);
	if (_IsFullscreen)
	{
		var _TargetZoomWidth = display_get_width() div _BaseWidth;
		var _TargetZoomHeight= display_get_height() div _BaseHeight;
		
		_TargetZoom = min(_TargetZoomWidth, _TargetZoomHeight);
	}
	
	_TargetWidth	= _BaseWidth  * _TargetZoom;
	_TargetHeight	= _BaseHeight * _TargetZoom;
	
	var newWidth = _TargetWidth;
	var newHeight = _TargetHeight;

	if (_IsFullscreen)
	{
		newWidth = display_get_width();
		newHeight= display_get_height();
	}
	
	window_set_size(newWidth, newHeight);
	
	surface_resize(application_surface, newWidth, newHeight);
}

if (!surface_exists(_TargetSurface))
{
	_TargetSurface	= surface_create(_BaseWidth, _BaseHeight);
	view_set_surface_id(0,_TargetSurface);
}
