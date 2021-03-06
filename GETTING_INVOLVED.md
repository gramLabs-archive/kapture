# This section is for newcomers to the project.

Getting involved in a new project often happens in the following order...

- Find a use case for it that is interesting to you (or your boss).
- Find a way to contribute to the project, as it is, this might be as simple as proposing a new idea, or improving documentation.
- Find a way to extend the project either by improving its test coverage, quality, reliability, performance, or modularity.
- Build your own product on top of it and become rich :).

# What are some interesting starter projects for learning how to use kapture?

Performance testing of kubernetes clusters can be daunting at first, and if your interested in learning about the
framework we have in place, then you can get started interactively by trying a few of these starter projects.

- Reproduce the existing performance results on your clusters.  Even minikube can work.
- Build a new performance test that is relevant to your needs.
- Look at how changing CPU, memory, and other parameters in the kustomize scripts 
increase or decrease performance.
- If your ambitous, extend the project to include a new database or data sink of some sort.

# Using Kapture to learn Kubernetes

Kapture is a great tool for learning K8s, here are some exersizes to get you started.

- First, make sure you know the basics of K8s.  This can be gleaned from online tutorials, for example, by going through and deploying the guestbook application: https://kubernetes.io/docs/tutorials/stateless-application/guestbook/.
- Reproduce the benchmarks on your own hardware.  
- Measure timing differences between PVCs and the standard deployment.
- Install prometheus and determine what the performance bottlenecks are in the out of the box deployment.
- Try to overcome the bottlneck, and then, calculate your max transaction throughput.
