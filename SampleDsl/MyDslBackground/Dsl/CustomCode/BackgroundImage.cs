using System;
using Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDSL
{

    public partial class MyDSLDiagram
    {
        protected override void InitializeInstanceResources()
        {
           
            ImageField backgroundField = new ImageField(
                "background",
                Company.MyDSL.Properties.Resources.mybackground);

            backgroundField.DefaultFocusable = false;
            backgroundField.DefaultSelectable = false;
            backgroundField.DefaultVisibility = true;
            backgroundField.DefaultUnscaled = false;

            shapeFields.Add(backgroundField);

            backgroundField.AnchoringBehavior
              .SetTopAnchor(AnchoringBehavior.Edge.Top, 0.01);
            backgroundField.AnchoringBehavior
              .SetLeftAnchor(AnchoringBehavior.Edge.Left, 0.01);
            backgroundField.AnchoringBehavior
              .SetRightAnchor(AnchoringBehavior.Edge.Right, 0.01);
            backgroundField.AnchoringBehavior
              .SetBottomAnchor(AnchoringBehavior.Edge.Bottom, 0.01);

            base.InitializeInstanceResources();
        }
    }
}