using DslDiagrams = global::Microsoft.VisualStudio.Modeling.Diagrams;

namespace Company.MyDSL
{

    public partial class MyWatchShape : DslDiagrams::ImageShape
    {
        //mi serve fare override della property @ResizableSides perchè
        //la ImageShape di default è settata come NON Resizable
        public override NodeSides ResizableSides => NodeSides.All;
    }

    public partial class MySettingShape : DslDiagrams::ImageShape
    {
        
        public override NodeSides ResizableSides => NodeSides.All;
    }
    public partial class MyWiFiShape : DslDiagrams::ImageShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }
    public partial class MyCartShape : DslDiagrams::ImageShape
    {

        public override NodeSides ResizableSides => NodeSides.All;
    }

}