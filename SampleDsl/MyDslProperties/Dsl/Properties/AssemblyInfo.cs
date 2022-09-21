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
[assembly: AssemblyProduct(@"MyDslProperties")]
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
[assembly: InternalsVisibleTo(@"Company.MyDslProperties.DslPackage, PublicKey=002400000480000094000000060200000024000052534131000400000100010061F68A6B314B86A142BA545A5F77EE640B425DEBF870447ED5DC42E50D91809F4D5B7A25F7B152C5FD4CD9EF275F7989953E01559FC960897FEE47CC4622F7F8B402C070A94767D8EFA8AA616D0454617F045AB782FDA2EA61F0369706552894A67CD92D1007231BB642B79ECF2B94186DD13245DFBDE3CE7E667AFE3E47C9DF")]