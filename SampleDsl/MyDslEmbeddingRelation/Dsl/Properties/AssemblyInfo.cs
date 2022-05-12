#region Using directives

using System;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Runtime.ConstrainedExecution;

#endregion

//
// General Information about an assembly is controlled through the following 
// set of attributes. Change these attribute values to modify the information
// associated with an assembly.
//
[assembly: AssemblyTitle(@"")]
[assembly: AssemblyDescription(@"")]
[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany(@"Company")]
[assembly: AssemblyProduct(@"MyDslEmbeddingRelation")]
[assembly: AssemblyCopyright("")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: System.Resources.NeutralResourcesLanguage("en")]

//
// Version information for an assembly consists of the following four values:
//
//      Major Version
//      Minor Version 
//      Build Number
//      Revision
//
// You can specify all the values or you can default the Revision and Build Numbers 
// by using the '*' as shown below:

[assembly: AssemblyVersion(@"1.0.0.0")]
[assembly: ComVisible(false)]
[assembly: CLSCompliant(true)]
[assembly: ReliabilityContract(Consistency.MayCorruptProcess, Cer.None)]

//
// Make the Dsl project internally visible to the DslPackage assembly
//
[assembly: InternalsVisibleTo(@"Company.MyDslEmbeddingRelation.DslPackage, PublicKey=0024000004800000940000000602000000240000525341310004000001000100212A89C893A58EA3017557BC1F82758E90ED8B99CE0BA896B031AC935D2CE0283116A5DA89C8AE87795ED42AF9EA4E2BA33B36F7DACA2F56C91BA9EE5EB9C1BBC78BA70D4CB3EC1DA189ACD081271FAE9A7AC9C241981FE41DAB5280D124F39A8160BDDDE04954FECF77FC6E84C3AA482D0C9AEB4872A4FC30C63CCAEC9356C2")]