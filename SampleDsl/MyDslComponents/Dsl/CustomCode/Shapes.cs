
using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDslComponents
{
    public partial class MyGaugeShape : DslDiagrams::ImageShape
    {
        //mi serve fare override della property @ResizableSides perchè
        //la ImageShape di default è settata come NON Resizable
        public override NodeSides ResizableSides => NodeSides.All;
    }

    public partial class MyButtonShape : DslDiagrams::ImageShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }
    public partial class MyTextboxShape : DslDiagrams::ImageShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }

}
