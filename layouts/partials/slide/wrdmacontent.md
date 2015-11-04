

# Introduction
D2D in 5G cellular can turn mobile/wireless device clusters into the next generation application platform.

Development of distributed apps over on-the-fly clusters in the cloud is rapidly gaining popularity, but today’s networking strata is sorely lacking for the job.

The widely used RDMA clustering model with verbs programming has been a standard in HPC data centers for decades. RDMA on mobile clusters is ideal for writing distributed applications with their own custom protocol-free networking schemes.

---

# 5G standards must take a close look at RDMA networking, particularly D2D to avoid IP lockin.
RDMA is faster, more efficient. Zero-copy and lower cpu usage in the (extremely slim)

RDMA network stack are more important in the mobile environment.

Furthermore, it lends naturally to clustering, user programmable networking.

---

# Computing Platform Evolution

## Each Wave Dwarfs its Predecessor

---

# The key thing here is the Platform

![Default-aligned image](/images/key_lock_image.jpg)

---

# Platform Evolution

---

# Clusters can be the Next Platform

---

# Easy to Grasp Model

- Take a High Performance RDMA Computing center.

--

- Replace all of the wire links with wireless.

--

- Replace the computing nodes with 5G mobile devices.

--

- All of the wireless links are now D2D.

--

- Voilà.

---

# Vastly wider Application Space
Order of magnitude more clusters than devices

---

#

---

# Powerful over and beyond sheer horsepower

---

#

---

#

---

#

---

#

---

#

---

#

---

#

---

#

???

Note: InfiniBand transport in h/w (on the NIC)

---

# Kernel Bypass

---

#

---

#

---

#

---

#

---

#

---

# InfiniBand

???

High speed communications link for data flow between processors and I/O devices with support for up to 64,000 addressable devices. Scalable, supports quality of service (QoS) and failover. Widely used as a server connect in HPC environments. InfiniBand is at the core of this presentation. Familiarity with IB is assumed.

---

#

???

InfiBand is evolving, becoming more efficient, utilizing hardware advancements

---

#

---

#

---

#

---

#

---

#

---

#

---

# iWARP - Internet Wide Area RDMA Protocol

---

#

---

# Means that…

---

# OFED - OpenFabrics Enterprise Distribution

???

Open Source software provided by the OpenFabrics Alliance. Provides legacy services over InfiniBand through APIs to Upper Layer Protocol (ULP) (annotated by yellow marker) kernel modules.

Not what we want. The ULP route is not programable.

---

#

---

#

???

Following the previous slide, the left hand side shows applications interfaced through APIs to Upper Layer Protocols (ULPs) to legacy service emulation. Not Programmable!

---

# Programmability with RDMA verbs (or newer PSM)

---

#

---

# Verbs

???

Here we see the comparison between inflexible protocols in the kernel (previous slide on the right) and programmable RDMA verbs. Still a tricky art without a yet-to-be developed verbs compiler. Not trivial, but the payoff is enormous since the verb-programming code is application code, could be incorporated with the app.

---

# Java 7 VM over verbs

???

Here’s a fine example of what we’re striving for languages and services over verbs (or newer technology, PSM etc.). This is Java 7. We want additional concurrent languages like GoLang, Erlang/Elixir, etc. over verbs.

---

# Custom Networking Schemes

---

#

---

#

---

# Imagine if Software had to be Protocol Conformant

---

# Painstaking, Meticulous
Only one language
Ran on only one type of machine

---

# Talk about protocols

---

# pushing code instead of data onto all the nodes

---

# Escape Protocol Gravity

---

# If programming RDMA verbs is so

---

# RDMA transfers between GPUs

---

# Virtualized RDMA

---

# Some Use Cases

---

# Car clusters

---

# Such a Simple Conceptual Model

---

# Sorry, not quite

---

# Nothing we don’t know how to do

---

#

- On-the-fly clustering of mobile devices

--

- Wireless InfiniBand Fabric Manager

--

- Wireless InfiniBand chips. SoftROCE over Wi-Fi for the interim

--

- Android virtualized RDMA or container D2D apps

--

-  Networking Meta Language or DSL over RDMA verbs

---

#

- Lacking external switching devices, switching and routing have to be done by the devices themselves.

--

- Seeding - bootstrapping the app/cluster

--

- Isolation between overlapping app/clusters

--

- Mixing and merging overlapping app/clusters

--

- Member registration, volatile resource allocation manager

--

- etc., etc….
