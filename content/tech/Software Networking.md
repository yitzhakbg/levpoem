+++
Categories = ["Networking"]
Description = ""
Tags = ["Protocoless", "nowall"]
author = "YBG"
date = "2015-03-31T16:27:35+03:00"
menu = "main"
title = "Software Networking"
bannerinline = "/images/Barrier_Broken_Brick_Wall.jpg"
bannerheight = 600
+++

## Software ~~Defined~~ Networking

### End of Networking ###

Abstract: Networking can be freed from the quagmire of constricting protocols by running it as application software in loadable user-space memory. Multi-core CPUs, on-the-fly clusters and functional-concurrent programming languages turn this into a practical reality. User-space networking means the end of networking. Networking will simply [become software](https://youtu.be/YHeyuD89n1Y?t=26m44s). Protocol compilers will boost user-space networking to new heights.

### The "*Protocol Wall*"

"*The Protocol Wall*" prevents Networking, usually an externally provided service, bound to conforming with rigid protocols on one side from becoming User-programmable software on the other side. Networking is characterized by:

1. A development community limited to experts only, crippling progress
2. Is transport-only, computationally impotent
3. Hosting only its own networking applications, generally requiring additional computing devices
4. Multiple networking paradigms can hardly coexist

While there can be other networking paradigms, FIAs, Future Internet Architectures such as Mobility First, Content Centric Networking, yet Future Internet Architecture is usually referred to in the singular, **The** Future Internet Architecture, implying that there will be only one, "winner takes all" monolithic architecture.

SDN/NFS, etc. may have eased networking development pain, but networking software remains far from being free running software. Network developers still look over the *Protocol Wall* envious of their software counterparts. Clouds, [SaaS](http://en.wikipedia.org/wiki/Software_as_a_service#Emerging_trends), [PaaS](http://en.wikipedia.org/wiki/Platform_as_a_service) are the modern day reincarnation if the [service bureau](http://en.wikipedia.org/wiki/Service_bureau) of yore - in short, remote resources. What a pity while the resource power to do better without reliance on external providers is so close at hand/smartphone/tablet, etc.
 
### What's wrong with Protocols? ###

A: Nothing other than there being so few of them. This becomes clear by asking "*What's wrong  with Java or C++?*". Who needs so many programming languages? Or, with a swipe at network overlaying, develop any language you wish so long as it's written in Java or C++.

## User Space Networking. Just load and run.

Application software, or plain old software as it's usually called, on the other side of "*The Protocol Wall*" suffers none of the above limitations. Loading the same code into user space memory on all of the network devices turns networking software into a protocol-free application component. It's that simple. The *protocol* is whatever the devices agree to use between themselves. The *protocol* can be copied or sold, jointly developed by the community if it's Open Source. In short distributed like any other software.

## Neither evolution nor clean slate.

The feasibility of user space networking as application code becomes clear on the context of another transition on the computing timeline.

The PC revolution didn't compete with Mainframe computing and didn't set out to replace it. Personal computers engulfed Mainframe computing by creating a vastly greater application-space. Ditto for Smartphones. Next wave, watches, IOT or whatever else is coming up. The same holds true for user-space networks. Envision the world of protocol-bound networking (Internet and friends) for a moment as being inside a larger, faster expanding universe of small protocol-less application-embedded networks = network-embedded applications.

## Application-Networks ##
Ideas along the lines of [Application Fluent Networks](http://www.iconvoicenetworks.com/solutions/application-fluent-network/) are taking beginning to take hold in the networking world, but progressing at networking speed, not software speed. So, why not look at this from the outside-in rather than Inside-out? Step outside of networking and into software.
  
### VM's Are Clumsy ###
The [Docker](https://www.docker.com/) paradigm...

## Game Changer: Multi-Core Clustering  ##

Transport-only networks are limited to ferrying data between remote end nodes. The concept a node is central to modeling networks. A node is commonly defined as an addressable computing entity. Networks modeled upon entities other than addressable nodes become relevant in the multi-core era. Why shouldn't realizing any new networking paradigm be feasible?

Concurrent processing applications have been known to be difficult to build and error prone. Functional concurrent programming languages change all that by making programs running millions of concurrent processes both easy to write and real-time safe. Concurrent programs can run an order of magnitude faster even on a single CPU and they fan out effortlessly to run on all available cores. Now that even the simplest devices are multi-core, this adds up to a quantum leap in performance. But that's not all. Out-of-the-box [Clustering](http://en.wikipedia.org/wiki/Computer_cluster) is rolling out.

## Distributed applications on their own networks.

The concept can be demonstrated by starting with a concurrent processing application running on a multi-core computer in a single box (or tablet/cellphone). Now add the cores of devices in the network willing to pool their resources. Even though most of the cores are in devices on the network, conceptually, it's still one box but with many more cores. *Running* the application on the network, turns the **network itself** into the processing platform for easy-to-write supercomputing powered applications.

Languages like [Erlang and Elixir atop the Erlang VM](http://elixir-lang.org/), [Go] (https://golang.org/), [Rust](http://www.rust-lang.org/) and so forth can do that today but the networking scheme is inherently inefficient for tasks like this and limits the path to enhancement. The fundamental building block abstraction here is definitely not the node. The processing platform is an amorphous glob of cores from constantly changing participants in the network at any given instant in time. The networking (so-called) *protocols* should have appropriate non-IP addressing schemes, capable of juggling processing resources and dynamically self-rerouting data in accordance with the current composition of the network. They would work harmoniously with runtime Erlang VM or similar, smoothly splicing the network into the processing. We're obviously not talking about networking protocols in the classical sense. There is no dividing line between networking and application.

## Conceptual Demo ##

Step 1: Start with a classical network box, switch or router, etc.[^Networking device here is not compulsory. For illustration only.] running current network protocols in kernel mode on a standard Linux server with no additional hardware for conceptual simplicity. Performance will be addressed later. Box serves one network.

Step 2: Add a second user space TCP/IP stack with same functionality as the first, kernel-mode device. With additional physical ports, the box now serves as two network (switch/router, etc.) devices.

Step 3: Step 2 is User-space software, can be multi-instance, repeated as many times as desired[^Dependent upon resources and capacity]. There are now *n* distinct networking devices in the box serving *n* networks.

### Parallelization
Step 4: Add additional CPU cores to boost the box's computing capacity on order to host user applications . Note the interface between the user applications and network traffic flowing through the devices are simple memory copies or message passing. No networking overhead, no complexity.

Step 5: Flip the model on its head. The *"boxes"* in stages 1-4 can just as easily be multi-core handheld devices, which are also client devices.

It is apparent at this point that:

1. Client devices can also provide network switching on behalf of their own networks.
2. The network has transformed from being a dumb transport domain to becoming a transport/compute domain. Every networking device in the network provides application processing, or visa versa, every application device in the network provides network switching.

Step 6: Stitch the application servers/cores/VMs associated with each network into a common, network-wide application fabric.

Step 7: Merge the formerly distinct networking components of each network into the network's application fabric. The application is like a quilt covering its own network.

## The Packet/Application Interface

## Performance ##

Performance on many cases can be a non-issue for a number of reasons:

1. Devices perform network switching only on behalf of their friends, participants of the same network (application).
2. Distances could be much shorter when the applications are close proximity autonomous networks[^Application Dependent].  The proverbial *end point*, i.e. destination may often be the network itself.
3. Less critical timing requirements. No need to forward torrential traffic flows directed towards remote end points.
4. Blazing fast concurrent packet handling in parallel on multi-core hardware.
5. Performance catches up. Take compilers for example.

## Chicken and Egg ##

Easier said than done. Lower level networking as plug-in software components isn't here yet.

## How D'ya? Security Etc. ##
...

## Protocol Compilers, the Holy Grail ##

...
