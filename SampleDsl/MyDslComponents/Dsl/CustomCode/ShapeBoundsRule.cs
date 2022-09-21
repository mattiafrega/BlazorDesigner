using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Microsoft.VisualStudio.Modeling.Diagrams;
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;


namespace Company.MyDslComponents
{
    /*
    public class ShapeBoundsRule : BoundsRules
    {
        
        public override RectangleD GetCompliantBounds(ShapeElement shape, RectangleD proposedBounds)
        {
            BaseShape baseShape = shape as BaseShape;
            if (baseShape == null) return proposedBounds;

            var component = baseShape.ModelElement as ITxComponent;
            if (component == null) return proposedBounds;

            //are we moving or resizing?
            if ( (!Equals(proposedBounds.Height, shape.AbsoluteBoundingBox.Height)) || (!Equals(proposedBounds.Width, shape.AbsoluteBoundingBox.Width)))
            {
                return RestrictResize(component, baseShape, proposedBounds);
            }
            else
            {
                return RestrictMovement(component, baseShape, proposedBounds);
            }
  
        }

        

    }
    */
}
