using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.VisualStudio.Modeling;
using Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslXYCoordinates
{
    public partial class ExampleElement
    {
        public double GetXValue()
        {
            var myShape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as NodeShape;
            return myShape.AbsoluteBoundingBox.X;
        }
        public double GetYValue()
        {
            var myShape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as NodeShape;
            return myShape.AbsoluteBoundingBox.Y;
        }

        public double GetHeightValue()
        {
            var myShape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as NodeShape;
            return myShape.AbsoluteBoundingBox.Height;
        }

        public double GetWidthValue()
        {
            var myShape = PresentationViewsSubject.GetPresentation(this).FirstOrDefault() as NodeShape;
            return myShape.AbsoluteBoundingBox.Width;
        }
    }
}
