package Components
{
	import mx.controls.TileList;
    import mx.core.mx_internal; //this import statement should appear be last
	

	public class ExposedTileList extends TileList
	{
		public function ExposedTileList()
		{
			super();
		}
		
		//The array of renderers being used in this list
        public function get renderers():Array
        {
            //prefix the internal property name with its namespace
            return mx_internal::rendererArray;
        }
		
	}
}

