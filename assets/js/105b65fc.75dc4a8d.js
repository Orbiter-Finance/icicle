"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[659],{5680:(e,a,t)=>{t.d(a,{xA:()=>o,yg:()=>N});var n=t(6540);function r(e,a,t){return a in e?Object.defineProperty(e,a,{value:t,enumerable:!0,configurable:!0,writable:!0}):e[a]=t,e}function m(e,a){var t=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);a&&(n=n.filter((function(a){return Object.getOwnPropertyDescriptor(e,a).enumerable}))),t.push.apply(t,n)}return t}function s(e){for(var a=1;a<arguments.length;a++){var t=null!=arguments[a]?arguments[a]:{};a%2?m(Object(t),!0).forEach((function(a){r(e,a,t[a])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(t)):m(Object(t)).forEach((function(a){Object.defineProperty(e,a,Object.getOwnPropertyDescriptor(t,a))}))}return e}function p(e,a){if(null==e)return{};var t,n,r=function(e,a){if(null==e)return{};var t,n,r={},m=Object.keys(e);for(n=0;n<m.length;n++)t=m[n],a.indexOf(t)>=0||(r[t]=e[t]);return r}(e,a);if(Object.getOwnPropertySymbols){var m=Object.getOwnPropertySymbols(e);for(n=0;n<m.length;n++)t=m[n],a.indexOf(t)>=0||Object.prototype.propertyIsEnumerable.call(e,t)&&(r[t]=e[t])}return r}var i=n.createContext({}),l=function(e){var a=n.useContext(i),t=a;return e&&(t="function"==typeof e?e(a):s(s({},a),e)),t},o=function(e){var a=l(e.components);return n.createElement(i.Provider,{value:a},e.children)},g="mdxType",c={inlineCode:"code",wrapper:function(e){var a=e.children;return n.createElement(n.Fragment,{},a)}},y=n.forwardRef((function(e,a){var t=e.components,r=e.mdxType,m=e.originalType,i=e.parentName,o=p(e,["components","mdxType","originalType","parentName"]),g=l(t),y=r,N=g["".concat(i,".").concat(y)]||g[y]||c[y]||m;return t?n.createElement(N,s(s({ref:a},o),{},{components:t})):n.createElement(N,s({ref:a},o))}));function N(e,a){var t=arguments,r=a&&a.mdxType;if("string"==typeof e||r){var m=t.length,s=new Array(m);s[0]=y;var p={};for(var i in a)hasOwnProperty.call(a,i)&&(p[i]=a[i]);p.originalType=e,p[g]="string"==typeof e?e:r,s[1]=p;for(var l=2;l<m;l++)s[l]=t[l];return n.createElement.apply(null,s)}return n.createElement.apply(null,t)}y.displayName="MDXCreateElement"},7869:(e,a,t)=>{t.r(a),t.d(a,{assets:()=>i,contentTitle:()=>s,default:()=>c,frontMatter:()=>m,metadata:()=>p,toc:()=>l});var n=t(8168),r=(t(6540),t(5680));t(1873);const m={},s="MSM Pre computation",p={unversionedId:"icicle/golang-bindings/msm-pre-computation",id:"icicle/golang-bindings/msm-pre-computation",title:"MSM Pre computation",description:"To understand the theory behind MSM pre computation technique refer to Niall Emmart's talk.",source:"@site/docs/icicle/golang-bindings/msm-pre-computation.md",sourceDirName:"icicle/golang-bindings",slug:"/icicle/golang-bindings/msm-pre-computation",permalink:"/icicle/golang-bindings/msm-pre-computation",editUrl:"https://github.com/ingonyama-zk/icicle/tree/main/docs/icicle/golang-bindings/msm-pre-computation.md",tags:[],version:"current",lastUpdatedBy:"Yuval Shekel",lastUpdatedAt:1712262198,formattedLastUpdatedAt:"4/4/2024",frontMatter:{},sidebar:"GettingStartedSidebar",previous:{title:"MSM",permalink:"/icicle/golang-bindings/msm"},next:{title:"NTT",permalink:"/icicle/golang-bindings/ntt"}},i={},l=[{value:"Supported curves",id:"supported-curves",level:3},{value:"Core package",id:"core-package",level:2},{value:"MSM <code>PrecomputeBases</code>",id:"msm-precomputebases",level:2},{value:"Description",id:"description",level:4},{value:"<code>PrecomputeBases</code>",id:"precomputebases",level:4},{value:"Parameters",id:"parameters",level:5},{value:"Example",id:"example",level:5},{value:"<code>G2PrecomputeBases</code>",id:"g2precomputebases",level:4},{value:"Parameters",id:"parameters-1",level:5},{value:"Example",id:"example-1",level:5},{value:"Benchmarks",id:"benchmarks",level:3}],o={toc:l},g="wrapper";function c(e){let{components:a,...t}=e;return(0,r.yg)(g,(0,n.A)({},o,t,{components:a,mdxType:"MDXLayout"}),(0,r.yg)("h1",{id:"msm-pre-computation"},"MSM Pre computation"),(0,r.yg)("p",null,"To understand the theory behind MSM pre computation technique refer to Niall Emmart's ",(0,r.yg)("a",{parentName:"p",href:"https://youtu.be/KAWlySN7Hm8?feature=shared&t=1734"},"talk"),"."),(0,r.yg)("h3",{id:"supported-curves"},"Supported curves"),(0,r.yg)("p",null,(0,r.yg)("inlineCode",{parentName:"p"},"bls12-377"),", ",(0,r.yg)("inlineCode",{parentName:"p"},"bls12-381"),", ",(0,r.yg)("inlineCode",{parentName:"p"},"bn254"),", ",(0,r.yg)("inlineCode",{parentName:"p"},"bw6-761")),(0,r.yg)("h2",{id:"core-package"},"Core package"),(0,r.yg)("h2",{id:"msm-precomputebases"},"MSM ",(0,r.yg)("inlineCode",{parentName:"h2"},"PrecomputeBases")),(0,r.yg)("p",null,(0,r.yg)("inlineCode",{parentName:"p"},"PrecomputeBases")," and ",(0,r.yg)("inlineCode",{parentName:"p"},"G2PrecomputeBases")," exists for all supported curves. "),(0,r.yg)("h4",{id:"description"},"Description"),(0,r.yg)("p",null,"This function extends each provided base point ",(0,r.yg)("span",{parentName:"p",className:"math math-inline"},(0,r.yg)("span",{parentName:"span",className:"katex"},(0,r.yg)("span",{parentName:"span",className:"katex-mathml"},(0,r.yg)("math",{parentName:"span",xmlns:"http://www.w3.org/1998/Math/MathML"},(0,r.yg)("semantics",{parentName:"math"},(0,r.yg)("mrow",{parentName:"semantics"},(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},"("),(0,r.yg)("mi",{parentName:"mrow"},"P"),(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},")")),(0,r.yg)("annotation",{parentName:"semantics",encoding:"application/x-tex"},"(P)")))),(0,r.yg)("span",{parentName:"span",className:"katex-html","aria-hidden":"true"},(0,r.yg)("span",{parentName:"span",className:"base"},(0,r.yg)("span",{parentName:"span",className:"strut",style:{height:"1em",verticalAlign:"-0.25em"}}),(0,r.yg)("span",{parentName:"span",className:"mopen"},"("),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal",style:{marginRight:"0.13889em"}},"P"),(0,r.yg)("span",{parentName:"span",className:"mclose"},")")))))," with its multiples ",(0,r.yg)("span",{parentName:"p",className:"math math-inline"},(0,r.yg)("span",{parentName:"span",className:"katex"},(0,r.yg)("span",{parentName:"span",className:"katex-mathml"},(0,r.yg)("math",{parentName:"span",xmlns:"http://www.w3.org/1998/Math/MathML"},(0,r.yg)("semantics",{parentName:"math"},(0,r.yg)("mrow",{parentName:"semantics"},(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},"("),(0,r.yg)("msup",{parentName:"mrow"},(0,r.yg)("mn",{parentName:"msup"},"2"),(0,r.yg)("mi",{parentName:"msup"},"l")),(0,r.yg)("mi",{parentName:"mrow"},"P"),(0,r.yg)("mo",{parentName:"mrow",separator:"true"},","),(0,r.yg)("msup",{parentName:"mrow"},(0,r.yg)("mn",{parentName:"msup"},"2"),(0,r.yg)("mrow",{parentName:"msup"},(0,r.yg)("mn",{parentName:"mrow"},"2"),(0,r.yg)("mi",{parentName:"mrow"},"l"))),(0,r.yg)("mi",{parentName:"mrow"},"P"),(0,r.yg)("mo",{parentName:"mrow",separator:"true"},","),(0,r.yg)("mi",{parentName:"mrow",mathvariant:"normal"},"."),(0,r.yg)("mi",{parentName:"mrow",mathvariant:"normal"},"."),(0,r.yg)("mi",{parentName:"mrow",mathvariant:"normal"},"."),(0,r.yg)("mo",{parentName:"mrow",separator:"true"},","),(0,r.yg)("msup",{parentName:"mrow"},(0,r.yg)("mn",{parentName:"msup"},"2"),(0,r.yg)("mrow",{parentName:"msup"},(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},"("),(0,r.yg)("mi",{parentName:"mrow"},"p"),(0,r.yg)("mi",{parentName:"mrow"},"r"),(0,r.yg)("mi",{parentName:"mrow"},"e"),(0,r.yg)("mi",{parentName:"mrow"},"c"),(0,r.yg)("mi",{parentName:"mrow"},"o"),(0,r.yg)("mi",{parentName:"mrow"},"m"),(0,r.yg)("mi",{parentName:"mrow"},"p"),(0,r.yg)("mi",{parentName:"mrow"},"u"),(0,r.yg)("mi",{parentName:"mrow"},"t"),(0,r.yg)("msub",{parentName:"mrow"},(0,r.yg)("mi",{parentName:"msub"},"e"),(0,r.yg)("mi",{parentName:"msub"},"f")),(0,r.yg)("mi",{parentName:"mrow"},"a"),(0,r.yg)("mi",{parentName:"mrow"},"c"),(0,r.yg)("mi",{parentName:"mrow"},"t"),(0,r.yg)("mi",{parentName:"mrow"},"o"),(0,r.yg)("mi",{parentName:"mrow"},"r"),(0,r.yg)("mo",{parentName:"mrow"},"\u2212"),(0,r.yg)("mn",{parentName:"mrow"},"1"),(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},")"),(0,r.yg)("mo",{parentName:"mrow"},"\u22c5"),(0,r.yg)("mi",{parentName:"mrow"},"l"))),(0,r.yg)("mi",{parentName:"mrow"},"P"),(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},")")),(0,r.yg)("annotation",{parentName:"semantics",encoding:"application/x-tex"},"(2^lP, 2^{2l}P, ..., 2^{(precompute_factor - 1) \\cdot l}P)")))),(0,r.yg)("span",{parentName:"span",className:"katex-html","aria-hidden":"true"},(0,r.yg)("span",{parentName:"span",className:"base"},(0,r.yg)("span",{parentName:"span",className:"strut",style:{height:"1.138em",verticalAlign:"-0.25em"}}),(0,r.yg)("span",{parentName:"span",className:"mopen"},"("),(0,r.yg)("span",{parentName:"span",className:"mord"},(0,r.yg)("span",{parentName:"span",className:"mord"},"2"),(0,r.yg)("span",{parentName:"span",className:"msupsub"},(0,r.yg)("span",{parentName:"span",className:"vlist-t"},(0,r.yg)("span",{parentName:"span",className:"vlist-r"},(0,r.yg)("span",{parentName:"span",className:"vlist",style:{height:"0.8491em"}},(0,r.yg)("span",{parentName:"span",style:{top:"-3.063em",marginRight:"0.05em"}},(0,r.yg)("span",{parentName:"span",className:"pstrut",style:{height:"2.7em"}}),(0,r.yg)("span",{parentName:"span",className:"sizing reset-size6 size3 mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight",style:{marginRight:"0.01968em"}},"l")))))))),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal",style:{marginRight:"0.13889em"}},"P"),(0,r.yg)("span",{parentName:"span",className:"mpunct"},","),(0,r.yg)("span",{parentName:"span",className:"mspace",style:{marginRight:"0.1667em"}}),(0,r.yg)("span",{parentName:"span",className:"mord"},(0,r.yg)("span",{parentName:"span",className:"mord"},"2"),(0,r.yg)("span",{parentName:"span",className:"msupsub"},(0,r.yg)("span",{parentName:"span",className:"vlist-t"},(0,r.yg)("span",{parentName:"span",className:"vlist-r"},(0,r.yg)("span",{parentName:"span",className:"vlist",style:{height:"0.8491em"}},(0,r.yg)("span",{parentName:"span",style:{top:"-3.063em",marginRight:"0.05em"}},(0,r.yg)("span",{parentName:"span",className:"pstrut",style:{height:"2.7em"}}),(0,r.yg)("span",{parentName:"span",className:"sizing reset-size6 size3 mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mtight"},"2"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight",style:{marginRight:"0.01968em"}},"l"))))))))),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal",style:{marginRight:"0.13889em"}},"P"),(0,r.yg)("span",{parentName:"span",className:"mpunct"},","),(0,r.yg)("span",{parentName:"span",className:"mspace",style:{marginRight:"0.1667em"}}),(0,r.yg)("span",{parentName:"span",className:"mord"},"..."),(0,r.yg)("span",{parentName:"span",className:"mpunct"},","),(0,r.yg)("span",{parentName:"span",className:"mspace",style:{marginRight:"0.1667em"}}),(0,r.yg)("span",{parentName:"span",className:"mord"},(0,r.yg)("span",{parentName:"span",className:"mord"},"2"),(0,r.yg)("span",{parentName:"span",className:"msupsub"},(0,r.yg)("span",{parentName:"span",className:"vlist-t"},(0,r.yg)("span",{parentName:"span",className:"vlist-r"},(0,r.yg)("span",{parentName:"span",className:"vlist",style:{height:"0.888em"}},(0,r.yg)("span",{parentName:"span",style:{top:"-3.063em",marginRight:"0.05em"}},(0,r.yg)("span",{parentName:"span",className:"pstrut",style:{height:"2.7em"}}),(0,r.yg)("span",{parentName:"span",className:"sizing reset-size6 size3 mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mtight"},(0,r.yg)("span",{parentName:"span",className:"mopen mtight"},"("),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"p"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"reco"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"m"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"p"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"u"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"t"),(0,r.yg)("span",{parentName:"span",className:"mord mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"e"),(0,r.yg)("span",{parentName:"span",className:"msupsub"},(0,r.yg)("span",{parentName:"span",className:"vlist-t vlist-t2"},(0,r.yg)("span",{parentName:"span",className:"vlist-r"},(0,r.yg)("span",{parentName:"span",className:"vlist",style:{height:"0.3448em"}},(0,r.yg)("span",{parentName:"span",style:{top:"-2.3488em",marginLeft:"0em",marginRight:"0.0714em"}},(0,r.yg)("span",{parentName:"span",className:"pstrut",style:{height:"2.5em"}}),(0,r.yg)("span",{parentName:"span",className:"sizing reset-size3 size1 mtight"},(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight",style:{marginRight:"0.10764em"}},"f")))),(0,r.yg)("span",{parentName:"span",className:"vlist-s"},"\u200b")),(0,r.yg)("span",{parentName:"span",className:"vlist-r"},(0,r.yg)("span",{parentName:"span",className:"vlist",style:{height:"0.2901em"}},(0,r.yg)("span",{parentName:"span"})))))),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"a"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"c"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight"},"t"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight",style:{marginRight:"0.02778em"}},"or"),(0,r.yg)("span",{parentName:"span",className:"mbin mtight"},"\u2212"),(0,r.yg)("span",{parentName:"span",className:"mord mtight"},"1"),(0,r.yg)("span",{parentName:"span",className:"mclose mtight"},")"),(0,r.yg)("span",{parentName:"span",className:"mbin mtight"},"\u22c5"),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal mtight",style:{marginRight:"0.01968em"}},"l"))))))))),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal",style:{marginRight:"0.13889em"}},"P"),(0,r.yg)("span",{parentName:"span",className:"mclose"},")"))))),", where ",(0,r.yg)("span",{parentName:"p",className:"math math-inline"},(0,r.yg)("span",{parentName:"span",className:"katex"},(0,r.yg)("span",{parentName:"span",className:"katex-mathml"},(0,r.yg)("math",{parentName:"span",xmlns:"http://www.w3.org/1998/Math/MathML"},(0,r.yg)("semantics",{parentName:"math"},(0,r.yg)("mrow",{parentName:"semantics"},(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},"("),(0,r.yg)("mi",{parentName:"mrow"},"l"),(0,r.yg)("mo",{parentName:"mrow",stretchy:"false"},")")),(0,r.yg)("annotation",{parentName:"semantics",encoding:"application/x-tex"},"(l)")))),(0,r.yg)("span",{parentName:"span",className:"katex-html","aria-hidden":"true"},(0,r.yg)("span",{parentName:"span",className:"base"},(0,r.yg)("span",{parentName:"span",className:"strut",style:{height:"1em",verticalAlign:"-0.25em"}}),(0,r.yg)("span",{parentName:"span",className:"mopen"},"("),(0,r.yg)("span",{parentName:"span",className:"mord mathnormal",style:{marginRight:"0.01968em"}},"l"),(0,r.yg)("span",{parentName:"span",className:"mclose"},")")))))," is a level of precomputation determined by the ",(0,r.yg)("inlineCode",{parentName:"p"},"precompute_factor"),". The extended set of points facilitates faster MSM computations by allowing the MSM algorithm to leverage precomputed multiples of base points, reducing the number of point additions required during the computation."),(0,r.yg)("p",null,"The precomputation process is crucial for optimizing MSM operations, especially when dealing with large sets of points and scalars. By precomputing and storing multiples of the base points, the MSM function can more efficiently compute the scalar-point multiplications."),(0,r.yg)("h4",{id:"precomputebases"},(0,r.yg)("inlineCode",{parentName:"h4"},"PrecomputeBases")),(0,r.yg)("p",null,"Precomputes bases for MSM by extending each base point with its multiples."),(0,r.yg)("pre",null,(0,r.yg)("code",{parentName:"pre",className:"language-go"},"func PrecomputeBases(points core.HostOrDeviceSlice, precomputeFactor int32, c int32, ctx *cr.DeviceContext, outputBases core.DeviceSlice) cr.CudaError\n")),(0,r.yg)("h5",{id:"parameters"},"Parameters"),(0,r.yg)("ul",null,(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"points")),": A slice of the original affine points to be extended with their multiples."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"precomputeFactor")),": Determines the total number of points to precompute for each base point."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"c")),": Currently unused; reserved for future compatibility."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"ctx")),": CUDA device context specifying the execution environment."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"outputBases")),": The device slice allocated for storing the extended bases.")),(0,r.yg)("h5",{id:"example"},"Example"),(0,r.yg)("pre",null,(0,r.yg)("code",{parentName:"pre",className:"language-go"},'cfg := GetDefaultMSMConfig()\npoints := GenerateAffinePoints(1024)\nprecomputeFactor := 8\nvar precomputeOut core.DeviceSlice\n_, e := precomputeOut.Malloc(points[0].Size()*points.Len()*int(precomputeFactor), points[0].Size())\n\nerr := PrecomputeBases(points, precomputeFactor, 0, &cfg.Ctx, precomputeOut)\nif err != cr.CudaSuccess {\n    log.Fatalf("PrecomputeBases failed: %v", err)\n}\n')),(0,r.yg)("h4",{id:"g2precomputebases"},(0,r.yg)("inlineCode",{parentName:"h4"},"G2PrecomputeBases")),(0,r.yg)("p",null,"This method is the same as ",(0,r.yg)("inlineCode",{parentName:"p"},"PrecomputeBases")," but for G2 points. Extends each G2 curve base point with its multiples for optimized MSM computations."),(0,r.yg)("pre",null,(0,r.yg)("code",{parentName:"pre",className:"language-go"},"func G2PrecomputeBases(points core.HostOrDeviceSlice, precomputeFactor int32, c int32, ctx *cr.DeviceContext, outputBases core.DeviceSlice) cr.CudaError\n")),(0,r.yg)("h5",{id:"parameters-1"},"Parameters"),(0,r.yg)("ul",null,(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"points")),": A slice of G2 curve points to be extended."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"precomputeFactor")),": The total number of points to precompute for each base."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"c")),": Reserved for future use to ensure compatibility with MSM operations."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"ctx")),": Specifies the CUDA device context for execution."),(0,r.yg)("li",{parentName:"ul"},(0,r.yg)("strong",{parentName:"li"},(0,r.yg)("inlineCode",{parentName:"strong"},"outputBases")),": Allocated device slice for the extended bases.")),(0,r.yg)("h5",{id:"example-1"},"Example"),(0,r.yg)("pre",null,(0,r.yg)("code",{parentName:"pre",className:"language-go"},'cfg := G2GetDefaultMSMConfig()\npoints := G2GenerateAffinePoints(1024)\nprecomputeFactor := 8\nvar precomputeOut core.DeviceSlice\n_, e := precomputeOut.Malloc(points[0].Size()*points.Len()*int(precomputeFactor), points[0].Size())\n\nerr := G2PrecomputeBases(points, precomputeFactor, 0, &cfg.Ctx, precomputeOut)\nif err != cr.CudaSuccess {\n    log.Fatalf("G2PrecomputeBases failed: %v", err)\n}\n')),(0,r.yg)("h3",{id:"benchmarks"},"Benchmarks"),(0,r.yg)("p",null,"Benchmarks where performed on a Nvidia RTX 3090Ti."),(0,r.yg)("table",null,(0,r.yg)("thead",{parentName:"table"},(0,r.yg)("tr",{parentName:"thead"},(0,r.yg)("th",{parentName:"tr",align:null},"Pre-computation factor"),(0,r.yg)("th",{parentName:"tr",align:null},"bn254 size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^20")," MSM, ms."),(0,r.yg)("th",{parentName:"tr",align:null},"bn254 size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^12")," MSM, size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^10")," batch, ms."),(0,r.yg)("th",{parentName:"tr",align:null},"bls12-381 size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^20")," MSM, ms."),(0,r.yg)("th",{parentName:"tr",align:null},"bls12-381 size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^12")," MSM, size ",(0,r.yg)("inlineCode",{parentName:"th"},"2^10")," batch, ms."))),(0,r.yg)("tbody",{parentName:"table"},(0,r.yg)("tr",{parentName:"tbody"},(0,r.yg)("td",{parentName:"tr",align:null},"1"),(0,r.yg)("td",{parentName:"tr",align:null},"14.1"),(0,r.yg)("td",{parentName:"tr",align:null},"82.8"),(0,r.yg)("td",{parentName:"tr",align:null},"25.5"),(0,r.yg)("td",{parentName:"tr",align:null},"136.7")),(0,r.yg)("tr",{parentName:"tbody"},(0,r.yg)("td",{parentName:"tr",align:null},"2"),(0,r.yg)("td",{parentName:"tr",align:null},"11.8"),(0,r.yg)("td",{parentName:"tr",align:null},"76.6"),(0,r.yg)("td",{parentName:"tr",align:null},"20.3"),(0,r.yg)("td",{parentName:"tr",align:null},"123.8")),(0,r.yg)("tr",{parentName:"tbody"},(0,r.yg)("td",{parentName:"tr",align:null},"4"),(0,r.yg)("td",{parentName:"tr",align:null},"10.9"),(0,r.yg)("td",{parentName:"tr",align:null},"73.8"),(0,r.yg)("td",{parentName:"tr",align:null},"18.1"),(0,r.yg)("td",{parentName:"tr",align:null},"117.8")),(0,r.yg)("tr",{parentName:"tbody"},(0,r.yg)("td",{parentName:"tr",align:null},"8"),(0,r.yg)("td",{parentName:"tr",align:null},"10.6"),(0,r.yg)("td",{parentName:"tr",align:null},"73.7"),(0,r.yg)("td",{parentName:"tr",align:null},"17.2"),(0,r.yg)("td",{parentName:"tr",align:null},"116.0")))))}c.isMDXComponent=!0},1873:(e,a,t)=>{t(6540)}}]);