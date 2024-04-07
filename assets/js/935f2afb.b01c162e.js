"use strict";(self.webpackChunkdocusaurus=self.webpackChunkdocusaurus||[]).push([[581],{5610:i=>{i.exports=JSON.parse('{"pluginId":"default","version":"current","label":"Next","banner":null,"badge":false,"className":"docs-version-current","isLast":true,"docsSidebars":{"GettingStartedSidebar":[{"type":"link","label":"Introduction","href":"/","docId":"introduction"},{"type":"category","label":"ICICLE","collapsed":false,"items":[{"type":"link","label":"Getting started","href":"/icicle/introduction","docId":"icicle/introduction"},{"type":"link","label":"ICICLE Provers","href":"/icicle/integrations","docId":"icicle/integrations"},{"type":"category","label":"Golang bindings","collapsed":true,"items":[{"type":"category","label":"MSM","collapsed":true,"items":[{"type":"link","label":"MSM pre computation","href":"/icicle/golang-bindings/msm-pre-computation","docId":"icicle/golang-bindings/msm-pre-computation"}],"collapsible":true,"href":"/icicle/golang-bindings/msm"},{"type":"link","label":"NTT","href":"/icicle/golang-bindings/ntt","docId":"icicle/golang-bindings/ntt"},{"type":"link","label":"Vector operations","href":"/icicle/golang-bindings/vec-ops","docId":"icicle/golang-bindings/vec-ops"}],"collapsible":true,"href":"/icicle/golang-bindings"},{"type":"category","label":"Rust bindings","collapsed":true,"items":[{"type":"category","label":"MSM","collapsed":true,"items":[{"type":"link","label":"MSM pre computation","href":"/icicle/rust-bindings/msm-pre-computation","docId":"icicle/rust-bindings/msm-pre-computation"}],"collapsible":true,"href":"/icicle/rust-bindings/msm"},{"type":"link","label":"NTT","href":"/icicle/rust-bindings/ntt","docId":"icicle/rust-bindings/ntt"},{"type":"link","label":"Vector operations","href":"/icicle/rust-bindings/vec-ops","docId":"icicle/rust-bindings/vec-ops"},{"type":"link","label":"Multi GPU Support","href":"/icicle/rust-bindings/multi-gpu","docId":"icicle/rust-bindings/multi-gpu"}],"collapsible":true,"href":"/icicle/rust-bindings"},{"type":"category","label":"Primitives","collapsed":true,"items":[{"type":"link","label":"MSM","href":"/icicle/primitives/msm","docId":"icicle/primitives/msm"},{"type":"link","label":"NTT","href":"/icicle/primitives/ntt","docId":"icicle/primitives/ntt"},{"type":"link","label":"Poseidon Hash","href":"/icicle/primitives/poseidon","docId":"icicle/primitives/poseidon"}],"collapsible":true,"href":"/icicle/primitives/overview"},{"type":"link","label":"Multi GPU Support","href":"/icicle/multi-gpu","docId":"icicle/multi-gpu"},{"type":"link","label":"Supporting additional curves","href":"/icicle/supporting-additional-curves","docId":"icicle/supporting-additional-curves"},{"type":"link","label":"Google Colab Instructions","href":"/icicle/colab-instructions","docId":"icicle/colab-instructions"}],"collapsible":true,"href":"/icicle/overview"},{"type":"link","label":"ZK Containers","href":"/ZKContainers","docId":"ZKContainers"},{"type":"link","label":"Ingonyama Grant program","href":"/grants","docId":"grants"},{"type":"link","label":"Contributor guide","href":"/contributor-guide","docId":"contributor-guide"},{"type":"category","label":"Additional Resources","collapsed":false,"items":[{"type":"link","label":"YouTube","href":"https://www.youtube.com/@ingo_ZK"},{"type":"link","label":"Ingonyama Blog","href":"https://www.ingonyama.com/blog"},{"type":"link","label":"Ingopedia","href":"https://www.ingonyama.com/ingopedia"},{"href":"https://github.com/ingonyama-zk","type":"link","label":"GitHub"}],"collapsible":true}]},"docs":{"contributor-guide":{"id":"contributor-guide","title":"Contributor\'s Guide","description":"We welcome all contributions with open arms. At Ingonyama we take a village approach, believing it takes many hands and minds to build a ecosystem.","sidebar":"GettingStartedSidebar"},"grants":{"id":"grants","title":"Ingonyama Grant programs","description":"Ingonyama understands the importance of supporting and fostering a vibrant community of researchers and builders to advance ZK. To encourage progress, we are not only developing in the open but also sharing resources with researchers and builders through various programs.","sidebar":"GettingStartedSidebar"},"icicle/colab-instructions":{"id":"icicle/colab-instructions","title":"Run ICICLE on Google Colab","description":"Google Colab lets you use a GPU free of charge, it\'s an Nvidia T4 GPU with 16 GB of memory, capable of running latest CUDA (tested on Cuda 12.2)","sidebar":"GettingStartedSidebar"},"icicle/golang-bindings":{"id":"icicle/golang-bindings","title":"Golang bindings","description":"Golang bindings allow you to use ICICLE as a golang library.","sidebar":"GettingStartedSidebar"},"icicle/golang-bindings/msm":{"id":"icicle/golang-bindings/msm","title":"MSM","description":"Supported curves","sidebar":"GettingStartedSidebar"},"icicle/golang-bindings/msm-pre-computation":{"id":"icicle/golang-bindings/msm-pre-computation","title":"MSM Pre computation","description":"To understand the theory behind MSM pre computation technique refer to Niall Emmart\'s talk.","sidebar":"GettingStartedSidebar"},"icicle/golang-bindings/multi-gpu":{"id":"icicle/golang-bindings/multi-gpu","title":"Multi GPU APIs","description":"To learn more about the theory of Multi GPU programming refer to this part of documentation."},"icicle/golang-bindings/ntt":{"id":"icicle/golang-bindings/ntt","title":"NTT","description":"Supported curves","sidebar":"GettingStartedSidebar"},"icicle/golang-bindings/vec-ops":{"id":"icicle/golang-bindings/vec-ops","title":"Vector Operations","description":"Overview","sidebar":"GettingStartedSidebar"},"icicle/integrations":{"id":"icicle/integrations","title":"ICICLE integrated provers","description":"ICICLE has been used by companies and projects such as Celer Network, Consensys Gnark, EZKL and others to accelerate their ZK proving pipeline.","sidebar":"GettingStartedSidebar"},"icicle/introduction":{"id":"icicle/introduction","title":"Getting started with ICICLE","description":"This guide is oriented towards developers who want to start writing code with the ICICLE libraries. If you just want to run your existing ZK circuits on GPU refer to this guide please.","sidebar":"GettingStartedSidebar"},"icicle/multi-gpu":{"id":"icicle/multi-gpu","title":"Multi GPU with ICICLE","description":"If you are looking for the Multi GPU API documentation refer here for Rust.","sidebar":"GettingStartedSidebar"},"icicle/overview":{"id":"icicle/overview","title":"What is ICICLE?","description":"GitHub Release","sidebar":"GettingStartedSidebar"},"icicle/primitives/msm":{"id":"icicle/primitives/msm","title":"MSM - Multi scalar multiplication","description":"MSM stands for Multi scalar multiplication, its defined as:","sidebar":"GettingStartedSidebar"},"icicle/primitives/ntt":{"id":"icicle/primitives/ntt","title":"NTT - Number Theoretic Transform","description":"The Number Theoretic Transform (NTT) is a variant of the Fourier Transform used over finite fields, particularly those of integers modulo a prime number. NTT operates in a discrete domain and is used primarily in applications requiring modular arithmetic, such as cryptography and polynomial multiplication.","sidebar":"GettingStartedSidebar"},"icicle/primitives/overview":{"id":"icicle/primitives/overview","title":"ICICLE Primitives","description":"This section of the documentation is dedicated to the ICICLE primitives, we will cover the usage and internal details of our primitives such as hashing algorithms, MSM and NTT.","sidebar":"GettingStartedSidebar"},"icicle/primitives/poseidon":{"id":"icicle/primitives/poseidon","title":"Poseidon","description":"Poseidon is a popular hash in the ZK ecosystem primarily because its optimized to work over large prime fields, a common setting for ZK proofs, thereby minimizing the number of multiplicative operations required.","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings":{"id":"icicle/rust-bindings","title":"Rust bindings","description":"Rust bindings allow you to use ICICLE as a rust library.","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings/msm":{"id":"icicle/rust-bindings/msm","title":"MSM","description":"Supported curves","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings/msm-pre-computation":{"id":"icicle/rust-bindings/msm-pre-computation","title":"MSM Pre computation","description":"To understand the theory behind MSM pre computation technique refer to Niall Emmart\'s talk.","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings/multi-gpu":{"id":"icicle/rust-bindings/multi-gpu","title":"Multi GPU APIs","description":"To learn more about the theory of Multi GPU programming refer to this part of documentation.","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings/ntt":{"id":"icicle/rust-bindings/ntt","title":"NTT","description":"Supported curves","sidebar":"GettingStartedSidebar"},"icicle/rust-bindings/vec-ops":{"id":"icicle/rust-bindings/vec-ops","title":"Vector Operations API","description":"Our vector operations API which is part of icicle-cuda-runtime package, includes fundamental methods for addition, subtraction, and multiplication of vectors, with support for both host and device memory.","sidebar":"GettingStartedSidebar"},"icicle/supporting-additional-curves":{"id":"icicle/supporting-additional-curves","title":"Supporting Additional Curves","description":"We understand the need for ZK developers to use different curves, some common some more exotic. For this reason we designed ICICLE to allow developers to add any curve they desire.","sidebar":"GettingStartedSidebar"},"introduction":{"id":"introduction","title":"","description":"Ingonyama is a next-generation semiconductor company, focusing on Zero-Knowledge Proof hardware acceleration. We build accelerators for advanced cryptography, unlocking real-time applications. Our focus is on democratizing access to compute intensive cryptography and making it accessible for developers to build on top of.","sidebar":"GettingStartedSidebar"},"ZKContainers":{"id":"ZKContainers","title":"ZKContainer","description":"We found that developing ZK provers with ICICLE gives developers the ability to scale ZK provers across many machines and many GPUs. To make this possible we developed the ZKContainer.","sidebar":"GettingStartedSidebar"}}}')}}]);