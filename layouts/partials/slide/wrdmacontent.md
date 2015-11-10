
name: Disruptions

### Concentric Technology Bubbles
> The history of technology is a history of unintended consequences, of revolutions that never happened, and of unforeseen disruptions.

![Bubbles in Bubbles](/images/bubbles_in_bubbles.jpg)

.footnote[Smart Things: Ubiquitous Computing User Experience Design, Mike Kuniavsky [Amazon](http://www.amazon.com/exec/obidos/ASIN/0123748992/orangecone-20)]
???
This may seem nadosh at the outset. Bear with me for a moment so we can get into the proper mindset
---
name: ExplodingInternet1
 [The growth rate of the Internet](http://www.livinginternet.com/i/ip_growth.htm) exceeds that of any previous technology... Today, the Internet is growing exponentially in three different directions -- size, processing power, and software sophistication -- making it the fastest growing technology humankind has ever created

.right[![Internet of Things Growth](/images/internetofthingsgrowth.png)]
.left[![IOT Growth](/images/Growth-Global-Mobile-Internet-Google-ex1_inline_tcm80-181547.png)]
---

name: inverse
layout: true
class: center], middle, inverse

---

name: normal
layout: true

---
name: Except4
## Except for one thing...

--
## We've seen this before

<div class="embed video-player">
<iframe class="youtube-player" type="text/html" width="640" height="385" src="http://www.youtube.com/embed/n1mpgOQmFCA?version=3&rel=0&autoplay=1&controls=0" allowfullscreen frameborder="0">
</iframe>
</div>

---
# Quotations
> [It’s astonishing to think](http://www.kotaku.co.uk/2015/10/19/the-1980s-game-that-predicted-the-internet) how much of the world has changed thanks to the Internet. It’s difficult to think of another recent technology that has so totally changed how people experience the world - the invention of the telephone well over 100 years ago is probably the only thing that comes close... But the swiftness and ubiquity of the revolution means that it can be difficult to imagine a time before the Internet existed, a time when computers were mostly limited to offices and files were stored on floppy disk.

--

> We tend to think that new products will be a lot like the ones we know. [We shoehorn existing concepts](http://time.com/60505/this-1981-computer-magazine-cover-explains-why-were-so-bad-at-tech-predictions/) where they don’t belong.
(One classic example: When it became clear that Apple was working on an “iPhone,” almost all the speculation involved something that was either a lot like an iPod, or a lot like other phones of the time. As far as I know, nobody expected anything remotely like the epoch-shifting device Apple released.)

--

> [We techies should be more honest](http://learn.org/articles/Looking_Back_to_the_Future_Past_Predictions_About_the_Internet.html) about what computers can do and what they cannot do, or else we are setting ourselves up for a big pie in the face.'

-Clifford Stoll, 1995

---
> # "There is no reason for any individual to have a computer in his home."



![Ken Olson](/images/KenOlson.png)
.footnote[[Ken Olsen](http://www.snopes.com/quotes/kenolsen.asp), founder and CEO of Digital Equipment Corporation,
1977
]
---


---
<!-- <iframe frameborder="0" scrolling="no" style="border:0px" src="https://books.google.co.il/books?id=FDoEAAAAMBAJ&lpg=PA36&ots=89cydPBpPy&dq=predictions%20the%20internet%20web%201980&pg=PA36&output=embed" width=500 height=500></iframe>
 -->

### Bob Metcalfe [InfoWorld Dec 23-30, 1996](https://books.google.co.il/books?id=FDoEAAAAMBAJ&pg=PA36&lpg=PA36&dq=predictions+the+internet+web+1980&source=bl&ots=89cydPBpPy&sig=UUkw-DwV1UptDVj5q3iOrqqLzzM&hl=en&sa=X&ved=0CD8Q6AEwB2oVChMInMKzmIeEyQIVwYUPCh1ITg8y#v=onepage&q=predictions%20the%20internet%20web%201980&f=true)
![InfoWorld Dec 23-30, 1996](/images/Metcalfe.png)

---

---
<!-- template: inverse -->

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

![key in lock](/images/key_lock_image.jpg)

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

---
# Quest for the Future Internet Architecture
--

# Why the __the__ ?
--

> Why not an unlimited number of Internet architectures, all cohabiting harmoniously ?
---
# Think about it for a moment to let it sink in
--

# Why should there be only one (or a very few) Internet architectures ?
---

# Vastly wider Application Space
Order of magnitude more clusters than devices

---

# Powerful over and beyond sheer horsepower

---

# Note: InfiniBand transport in h/w (on the NIC)

---

# Kernel Bypass

---

# InfiniBand

High speed communications link for data flow between processors and I/O devices with support for up to 64,000 addressable devices. Scalable, supports quality of service (QoS) and failover. Widely used as a server connect in HPC environments. InfiniBand is at the core of this presentation. Familiarity with IB is assumed.

---

InfiBand is evolving, becoming more efficient, utilizing hardware advancements

---

# iWARP - Internet Wide Area RDMA Protocol

---

# Means that…

---

# OFED - OpenFabrics Enterprise Distribution

???

Open Source software provided by the OpenFabrics Alliance. Provides legacy services over InfiniBand through APIs to Upper Layer Protocol (ULP) (annotated by yellow marker) kernel modules.

Not what we want. The ULP route is not programable.

---

Following the previous slide, the left hand side shows applications interfaced through APIs to Upper Layer Protocols (ULPs) to legacy service emulation. Not Programmable!

---

# Programmability with RDMA verbs (or newer PSM)

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
