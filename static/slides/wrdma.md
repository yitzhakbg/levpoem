layout: true
.tohome[[![:scale 90%](/images/celestial-neighbors-323444.jpg "home")](http://localhost:1313)]

---
class: center, middle, main-title, inverse
# Disrupting the Internet
## Wireless RDMA on D2D Mobile Devices

### Yitzhak Bar Geva, Prof. Jon Crowcroft
### November 2015

---

name: ExplodingInternet1
 # [The growth rate of the Internet](http://www.livinginternet.com/i/ip_growth.htm) <br/> exceeds that of any previous technology...
![:scale 105%](/images/internetofthingsgrowth.png)
--
 
 #### The Internet is growing exponentially in three different directions -- size, processing power, and software sophistication -- making it the fastest growing technology humankind has ever created

---

name: Except4
# All the superlatives are true
--
 except that...
--

# .left-column[This is a rerun.]
<div class="embed video-player">
<iframe width="560" height="315" src="https://www.youtube.com/v/n1mpgOQmFCA?list=PL1ACKARftyBDLK67SIj6cba5uk24fE-ff&rel=0&autoplay=1&controls=0&fs=0&loop=1&modestbranding=1&showinfo=0" frameborder="0"></iframe>
</div>

# .center[We've been there before]

---

name: NotTheFirst
class: center
# This isn't the first disruption
.left-column[
  ## Personal Computers
]
.right-column[
	![:scale 100%](/images/MainframesDisrupted.jpg)
]

---

name: NotTheFirst2
class: center
# This isn't the first disruption
.left-column[
  ## Personal Computers
  ## Internet
]
.right-column[
	![:scale 105%](/images/Disruption.png)
]

---
name: NotTheFirst3
class: center
# This isn't the first disruption
.left-column[
  ## Personal Computers
  ## Internet
  ## Mobile
]
.right-column[
	![:scale 100%](/images/Growth-Global-Mobile-Internet-Google-ex1_inline_tcm80-181547.png))
]

---
name: Bubbles
class: center
# Concentric Technology Bubbles <br/> Each wave envelopes its predecessors
![:scale 90%](/images/bubbles_in_bubbles.jpg)

---
name: Waves of Disruptions
class: center
background-image: /images/waves-of-disruption.jpg
# Looking back from 2025...
![:scale 100%](/images/waves-of-disruption.jpg)
# the 2020 vision will have been disrupted</br>*By what?*

---
name: Platform
class: center
# **The Platform **is the disruptor
.pull-right[![:scale 100%](/images/batman.jpg)]
--

### .left[Each wave is on an exponentially more pervasive computing platform]
--

### .left[What computing&nbsp;platform could be more&nbsp;pervasive, less&nbsp;expensive, more&nbsp;programmable than billions of wireless&nbsp;devices?]
--

### .left[We'll show you, but first a question...]

---
name: Programmable networks
class: center
# .left[Why can't networks be programmed?]
# .left[A: Because the [Protocol Wall](http://goo.gl/HSpSgH)</br>blocks networking from software]

---
<div class="embed video-player">
<iframe width="800" height="600" src="https://www.youtube.com/v/-N5wJl80b08?list=PL1ACKARftyBDLK67SIj6cba5uk24fE-ff&rel=0&autoplay=1&controls=1&fs=1&loop=0&vq=hd720&modestbranding=1&showinfo=0" frameborder="0" allowfullscreen></iframe>
</div>
---
## High Protocol Wall

![:scale 110%](/images/TCPIPStackHiWall1.png)
---
## Low Protocol Wall
![:scale 110%](/images/TCPIPStackLoWall.png)
---
name: ThatWas
### So far, as seen in context of our "__classical__" networking world
--

## Probably won't be adopted
--
  due to the protocol-frozen mind set
--

## Next see where the model really shines...
---
name: EasyToGrasp
# Easy to Grasp Model

- Take a High Performance RDMA Computing center.
	- It's a computing platform, isn't it?
--

- Replace all of the wire/optical fiber links with wireless.
	- Still a computing platform?
--

- Replace the fixed computing nodes with mobile devices.
	- Still a computing platform?
---
background-image: url(/images/EasyToGrasp.png)
background-position: center;
background-repeat: no-repeat;
background-size: contain;
---
background-image: url(/images/BecomesWirelessHPC.png)
background-position: center;
background-repeat: no-repeat;
background-size: contain;
---
# Grasp that...
- Every cluster is a full-blown autonomous computing platform
--

- Any combination of devices can cluster
--

- Every cluster can (optionally) be an IP addressable node
	- billions of Internet devices now become trillions
--

- Orthogonal to the Internet and conventional networking
	- Entirely new programming/computing realm
	- Inter-cluster network traffic
		- fast
		- no burden on existing infrastructure
	- New networking paradigms
		- evolve freely
		- at software speed
--

- Clusters can cluster
	- Multi-million node global clusters
- etc., etc...
---
> We tend to think that new products will be a lot like the ones we know. [We shoehorn existing concepts](http://time.com/60505/this-1981-computer-magazine-cover-explains-why-were-so-bad-at-tech-predictions/) where they don’t belong.
(One classic example: When it became clear that Apple was working on an “iPhone,” almost all the speculation involved something that was either a lot like an iPod, or a lot like other phones of the time. As far as I know, nobody expected anything remotely like the epoch-shifting device Apple released.)

--

> [We techies should be more honest](http://learn.org/articles/Looking_Back_to_the_Future_Past_Predictions_About_the_Internet.html) about what computers can do and what they cannot do, or else we are setting ourselves up for a big pie in the face.'

-Clifford Stoll, 1995

---

#### Ken Olson (whom Bill Gates had idolized as a teenager), had been debunking the PC since 1977, when he told a convention of the World Future Society,
.footnote[[Ken Olsen](http://www.snopes.com/quotes/kenolsen.asp), founder and CEO of Digital Equipment Corporation,
	1977]

--

# "There is no reason for any individual to have a computer in his home."

--

#### Olson's mistake was in binding the platform with what could be done with it. We never have an inkling. Take smartphones for example.

---
	<!-- <iframe frameborder="0" scrolling="no" style="border:0px" src="https://books.google.co.il/books?id=FDoEAAAAMBAJ&lpg=PA36&ots=89cydPBpPy&dq=predictions%20the%20internet%20web%201980&pg=PA36&output=embed" width=500 height=500></iframe>
	 -->

.left[![:scale 105%](/images/Metcalfe.png)]
### Bob Metcalfe [InfoWorld Dec 23-30, 1996](https://books.google.co.il/books?id=FDoEAAAAMBAJ&pg=PA36&lpg=PA36&dq=predictions+the+internet+web+1980&source=bl&ots=89cydPBpPy&sig=UUkw-DwV1UptDVj5q3iOrqqLzzM&hl=en&sa=X&ved=0CD8Q6AEwB2oVChMInMKzmIeEyQIVwYUPCh1ITg8y#v=onepage&q=predictions%20the%20internet%20web%201980&f=true)

---

<!-- template: inverse -->

# Introduction
D2D in 5G cellular can turn mobile/wireless device clusters into the next generation application platform.

Development of distributed apps over on-the-fly clusters in the cloud is rapidly gaining popularity, but today’s networking strata is sorely lacking for the job.

The widely used RDMA clustering model with verbs programming has been a standard in HPC data centers for decades. RDMA on mobile clusters is ideal for writing distributed applications with their own custom protocol-free networking schemes.

---
# Clusters can be the Next Platform

---

- All of the wireless links are now D2D. and you have...
### .left[An autonomous mobile distributed computing platform]

---
# Quest for __the__ Future Internet Architecture

--

# __the__? Only one?

--

## .left[Why not an unlimited number of free&#8209;to&#8209;evolve, user&nbsp;programmable Internet architectures, flowing side&nbsp;by&nbsp;side?]

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
