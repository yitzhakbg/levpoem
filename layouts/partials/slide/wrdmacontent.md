<!-- class: center, middle, inverse
## What is it and why should I be using it?
---
layout: false
.left-column[
  ## What is it?
]
.right-column[
  A simple, in-browser, Markdown-driven slideshow tool targeted at people who know their way around HTML and CSS, featuring:

- Markdown formatting, with smart extensions

- Presenter mode, with cloned slideshow view

- Syntax highlighting, supporting a range of languages

- Slide scaling, thus similar appearance on all devices / resolutions .red[*]

- Touch support for smart phones and pads, i.e. swipe to navigate slides

.footnote[.red[*] At least browsers try their best]
]
---
.left-column[
  ## What is it?
  ## Why use it?
]
.right-column[
If your ideal slideshow creation workflow contains any of the following steps:

- Just write what's on your mind

- Do some basic styling

- Easily collaborate with others

- Share with and show to everyone

Then remark might be perfect for your next.red[*] slideshow!

.footnote[.red[*] You probably want to convert existing slideshows as well]
]
---
.left-column[
  ## What is it?
  ## Why use it?
]
.right-column[
As the slideshow is expressed using Markdown, you may:

- Focus on the content, expressing yourself in next to plain text not worrying what flashy graphics and disturbing effects to put where

As the slideshow is actually an HTML document, you may:

- Display it in any decent browser

- Style it using regular CSS, just like any other HTML content

- Use it offline!

As the slideshow is contained in a plain file, you may:

- Store it wherever you like; on your computer, hosted from your Dropbox, hosted on Github Pages alongside the stuff you're presenting...

- Easily collaborate with others, keeping track of changes using your favourite SCM tool, like Git or Mercurial
]

--- -->

class: center, middle, main-title, inverse
# Disrupting the Internet
## Wireless RDMA on D2D Mobile Devices

### Yitzhak Bar Geva, Prof. Jon Crowcroft
### November 2015

---

name: ExplodingInternet1
class: middle
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

# 5G standards must take a close look at RDMA networking, particularly D2D to avoid IP lockin.
RDMA is faster, more efficient. Zero-copy and lower cpu usage in the (extremely slim)

RDMA network stack are more important in the mobile environment.

Furthermore, it lends naturally to clustering, user programmable networking.

---

# Computing Platform Evolution

## Each Wave Dwarfs its Predecessor

---

# .center[The key thing here is the Platform]

![:scale 100%](/images/key_lock_image.jpg)

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
