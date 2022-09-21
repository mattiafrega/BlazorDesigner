
using Microsoft.VisualStudio.Modeling.Diagrams;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;
using Microsoft.VisualStudio.Modeling;
using System;

using DslModeling = global::Microsoft.VisualStudio.Modeling;

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
            //ReparentDraggedItem(this, e);
        }

        /*
        public override bool AllowsChildrenToResizeParent
        {
            get { return true; }
        }
        */

        /*
        public override SizeD MinimumResizableSize
        {
            get
            {
                return this.CalculateMinimumSizeBasedOnChildren();
            }
        }
        */

        //activeShape is the Shape that is being dragged and dropped by the user
        //to get the Model Element should I use .ModelElement or .Subject?
        public void ReparentDraggedItem(ShapeElement hitParentShape, DiagramDragEventArgs e)
        {
            /*
             NOT WORKING
            var store = hitParentShape.Store;
            foreach (var protoEl in e.Prototype.RootProtoElements)
            {
                childEl = store.ElementDirectory.GetElement(protoEl.ElementId);
            }
            DslDiagrams::Diagram.FixUpDiagram(hitParentShape.Subject, childEl);
            */

            /*
             NOT WORKING
            using (Transaction t = this.Store.TransactionManager.BeginTransaction("Move child to new parent"))
            {
                FixUpChildShapes(hitParentShape);
                t.Commit();
            }
            */
            var store = hitParentShape.Store;
            foreach (var protoEl in e.Prototype.RootProtoElements)
            {
                if (true)
                {
                    var modelEl = store.ElementDirectory.GetElement(protoEl.ElementId);
                    ITxButtonShape objShape = modelEl as ITxButtonShape;
                    ITxButton obj = objShape.Subject as ITxButton;
                    var oldParentShape = objShape.ParentShape;

                    using (Transaction t = store.TransactionManager.BeginTransaction("Reparent dragged obj"))
                    {

                        //Diagram.FixUpDiagram(hitParentShape, objShape);
                        Diagram.FixUpChildShapes(objShape);
                        t.Commit();
                    }

                }

            }

        }

    }   

}
