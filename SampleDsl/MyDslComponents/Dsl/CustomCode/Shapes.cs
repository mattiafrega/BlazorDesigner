
using Microsoft.VisualStudio.Modeling.Diagrams;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslComponents
{
    /*
    public partial class ITxGaugeShape : BaseShape
    {
        //I need to override @ResizableSides property because
        //ImageShape is set on NOT Resizable by default
        public override NodeSides ResizableSides => NodeSides.All;
    }

    public partial class ITxButtonShape : BaseShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }
    
    public partial class ITxTextboxShape : BaseShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }

    public partial class ITxViewShape : BaseShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }

    public partial class ITxSubViewShape : BaseShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }
    */

    //I need to override @ResizableSides property because
    //ImageShape is set on NOT Resizable by default

    public abstract partial class BaseShape : DslDiagrams::ImageShape
    {
        public override NodeSides ResizableSides => NodeSides.All;

        public double GetWidthValue()
        {
            return 96*AbsoluteBoundingBox.Width;
        }

        public double GetHeightValue()
        {
            return 96*AbsoluteBoundingBox.Height;
        }

        public double GetXValue()
        {
            return AbsoluteBoundingBox.X;
        }

        public double GetYValue()
        {
            return AbsoluteBoundingBox.Y;
        }

        public override void OnDragDrop(DiagramDragEventArgs e)
        {
            base.OnDragDrop(e);
            ReparentDraggedItem();
        }

        public void ReparentDraggedItem()
        {
            //find new parent of the dragged item
        }

    }

}
