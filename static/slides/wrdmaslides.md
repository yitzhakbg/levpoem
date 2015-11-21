layout: true
class: left, top, theYellowBackground
.tohome[[![:scale 30%](/images/home-icon.png "home")](http://localhost:1313)]
---
class: center, middle, main-title, inverse
# Disrupting the Internet
## Wireless RDMA on D2D Mobile Devices

### Yitzhak Bar Geva, Prof. Jon Crowcroft
### November 2015
---
name: ExplodingInternet1
# [The growth rate of the Internet](http://www.livinginternet.com/i/ip_growth.htm)<br/>exceeds that of any previous technology...
![:scale 105%](/images/internetofthingsgrowth.png)
--
count: false
 
 #### The Internet is growing exponentially in three different directions -- size, processing power, and software sophistication -- making it the fastest growing technology humankind has ever created
---
count: false
name: Except4
# All the superlatives are true
--
 except that...

--
count: false

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
count: false

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
count: false
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
![:scale 85%](/images/bubbles_in_bubbles.jpg)
---
name: Waves of Disruptions
class: center, top
background-image: /images/waves-of-disruption.jpg
## .left[Looking back from 2025...</br>the 2020 vision will have been disrupted]
![:scale 95%](/images/waves-of-disruption.jpg)
--

# .center[_**By what?**_]
---
name: Platform
# .center[**The Platform** is the disruptor]
.pull-right[![:scale 100%](/images/batman.jpg)]
--
count: false

### .left[Each wave is on an exponentially more pervasive computing&nbsp;platform]
--
count: false

### .left[What computing&nbsp;platform could be more&nbsp;pervasive, less&nbsp;expensive, more&nbsp;programmable than tens&nbsp;of&nbsp;billions of wireless&nbsp;devices?]
--

### .left[We'll see, but first a few questions...]
---
name: Questions
class: left
# Quest for the Future Internet Architecture</br>
--
count: false
# __the__?? Only one?

--
count: false

### 1. Why not an unlimited number of free&#8209;to&#8209;evolve Internet architectures, flowing side&nbsp;by&nbsp;side?
--
count: false

### 2. Why can't networks be programmed?
--
count: false

### 3. Why confining protocols?
---

<div class="embed video-player">
<iframe width="800" height="600" src="https://www.youtube.com/v/J9t_Vt2jJLI?list=PL1ACKARftyBC3Aun18Mj_9lz5h0K1vHiQ&rel=0&autoplay=1&controls=1&fs=1&loop=0&vq=hd720&modestbranding=1&showinfo=0" frameborder="0" allowfullscreen></iframe>
</div>
---

## High Protocol Wall

![:scale 100%](/images/TCPIPStackHiWall1.png)

---
count: false

## Low Protocol Wall
![:scale 100%](/images/TCPIPStackLoWall.png)

---
name: ThatWas
class: left, top
# Next see where the model really shines...
![:scale 80%](/images/shine.jpg)

.footnote[[Press here for an introduction to RDMA and InfiBand](#RDMAIntro)]
---
name: cellularD2D
class: left, top
# .center[Cellular D2D]
Cellular D2D can turn mobile/wireless device clusters into the next generation application platform.

Development of distributed apps over on-the-fly clusters in the cloud is rapidly gaining popularity, but today’s networking strata is sorely lacking for the job.

The widely used RDMA clustering model with verbs programming has been a standard in HPC data centers for decades. RDMA on mobile clusters is ideal for writing distributed applications with their own custom networking schemes.
---
name: EasyToGrasp1
## **Easy to Grasp Model** - Take an HPC Computing center.
.center[![:scale 98%](/images/hpc-solution-diagram_sm.jpg)]
---
name: EasyToGrasp2
count: false
## **Easy to Grasp Model** Replace wire links with wireless
.center[![:scale 96%](/images/hpc-diagram_wireless.png)]
---
name: EasyToGrasp3
count: false
### **Easy to Grasp Model** Replace compute nodes with mobile devices
.center[![:scale 98%](/images/hpc-diagram_mobile.png)]
---
background-image: url(/images/EasyToGrasp.png)
background-position: center;
background-repeat: no-repeat;
background-size: contain;
---

## Entirely new network/computing realm
### Vastly wider application space, higher device density and power
  - Order of magnitude more clusters than devices
  - Mobile devices will be multicore with much higher device density

### Orthogonal to the Internet
  - Not out to change or improve the Internet
  - Intra-cluster network traffic
    - Close proximity = fast. No burden on existing infrastructure
  - New networking paradigms can evolve freely, at software speed

### RDMA Underutilized
  - High Power computing steals the limelight from RDMA.
    - RDMA has tremendous potential in other spheres, once it's set free

---
class: left, top

### Any combination of devices can cluster
- Devices can pool their cores and storage
- Devices can belong to multiple clusters simultaneously 
- Every cluster can (optionally) be an IP addressable node
   - tens of billions of Internet devices now become trillions
- Clusters can cluster
   - Multi-million node global clusters

.right[![:scale 80%](/images/cluster model transparent.png)]
---
class: left, top
# .center[Avoid Pitfalls]
.left[![:scale 65%](/images/fallingintohole.png)]
1. Put performance aside for now.
  - Obsession with it got us into the protocol pit in the first place.
  - Not essential. Can be dealt with later, as in the past.
--
count: false
2. **The classic mistake:** Binding the platform with what can be done with it.
---
<!-- <iframe frameborder="0" scrolling="no" style="border:0px" src="https://books.google.co.il/books?id=FDoEAAAAMBAJ&lpg=PA36&ots=89cydPBpPy&dq=predictions%20the%20internet%20web%201980&pg=PA36&output=embed" width=500 height=500></iframe>
   -->

.center[![:scale 105%](/images/Metcalfe.png)]
### Bob Metcalfe [InfoWorld Dec 23-30, 1996](https://books.google.co.il/books?id=FDoEAAAAMBAJ&pg=PA36&lpg=PA36&dq=predictions+the+internet+web+1980&source=bl&ots=89cydPBpPy&sig=UUkw-DwV1UptDVj5q3iOrqqLzzM&hl=en&sa=X&ved=0CD8Q6AEwB2oVChMInMKzmIeEyQIVwYUPCh1ITg8y#v=onepage&q=predictions%20the%20internet%20web%201980&f=true)
---

### Ken Olson<sup>*</sup>, .footnote.left[founder and CEO of Digital Equipment Corporation, 1977]whom Bill Gates had idolized as a teenager, had been debunking the PC since 1977, when he told a convention of the World Future Society,
--
count: false

> # *_"There is no reason for any individual to have a computer in his home."_*

--
count: false

### Metcalfe and Olson's mistake was in binding the platform with what could be done with it. We had no inkling of what could be done with the computer, with the web, with the smartphone.

???

## Metcalfe and Olson's mistake was in binding the platform with what could be done with it. We never have an inkling. No one knew what could be done with personal computers, no one knew what could be done with the web, no one knew what could be done with smartphones. Let's not repeat that mistake.
---

name: RDMADescr1
class: top, center, theGreyBackground
background-image: url("/images/RDMA Mapped Over Wireless Clusters.png")
---

name: RDMADescr2
class: top, center, theGreyBackground
background-image: url("/images/RDMA Over Wireless Clusters.png")
background-repeat: no-repeat;
---

name: RDMADescr3
class: top, center, theGreyBackground
background-image: url("/images/RDMA User Space programmable.png")
---

name: RDMADescr4
class: top, center, theWhiteBackground
background-image: url("/images/Programmable.png")
---

name: RDMADescr5
class: top, center, theWhiteBackground
background-image: url("/images/Not Programmable.png")
---

name: RDMADescr6
class: top, center, theWhiteBackground
background-image: url("/images/ROCE - RDMA over.png")
---

name: RDMADescr7
class: top, center, theWhiteBackground
background-image: url("/images/ROCE in kernel.png")
---

name: RDMADescr8
class: top, center, theGreyBackground
background-image: url("/images/RDMA Mapped Over Wireless Clusters.png")
---

name: RDMADescr9
class: top, center, theGreyBackground
background-image: url("/images/RDMA Mapped Over Wireless Clusters.png")
---

name: RDMADescr10
class: top, center, theGreyBackground
background-image: url("/images/RDMA Mapped Over Wireless Clusters.png")
---

name: RDMAIntro
class: top, center, theWhiteBackground
background-image: url("/images/Overview of RDMA and ROCE.png")
---
name: RDMAIntro1
class: top, center, theWhiteBackground
background-image: url("/images/RDMA Technology Overview.png")
---
name: RDMAIntro3
class: top, center, theGreyBackground
background-image: url("/images/Remote Direct Memory Access.png")
---
name: RDMAIntro4
class: top, center, theGreyBackground
background-image: url("/images/RDMA Benefits.png")
---
name: RDMAIntro5
class: top, center, theGreyBackground
background-image: url("/images/RDMA Technologies.png")
---
name: RDMAIntro6
class: top, center, theGreyBackground
background-image: url("/images/RDMA Architecture Layering.png")
---
name: RDMAIntro7
class: top, center, theBlackBackground
background-image: url("/images/Kernel Bypass.png")
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

# RDMA transfers between GPUs
---

# Virtualized RDMA
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
---

> We tend to think that new products will be a lot like the ones we know. [We shoehorn existing concepts](http://time.com/60505/this-1981-computer-magazine-cover-explains-why-were-so-bad-at-tech-predictions/) where they don’t belong.
(One classic example: When it became clear that Apple was working on an “iPhone,” almost all the speculation involved something that was either a lot like an iPod, or a lot like other phones of the time. As far as I know, nobody expected anything remotely like the epoch-shifting device Apple released.)
--

> [We techies should be more honest](http://learn.org/articles/Looking_Back_to_the_Future_Past_Predictions_About_the_Internet.html) about what computers can do and what they cannot do, or else we are setting ourselves up for a big pie in the face.'

-Clifford Stoll, 1995
