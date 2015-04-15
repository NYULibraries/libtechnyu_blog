---
layout: post
title: "Notes from Webinar on Early BIBFRAME Adopters"
author: Daniel Lovins
date: 2014-07=07 09:06
comments: true
categories: metadata 
---

A few of us attended a NISO Webinar this week called "[Experimenting with BIBFRAME: Reports from Early Adopters](http://www.slideshare.net/BaltimoreNISO/april-8-niso-webinar-experimenting-with-bibframe-reports-from-early-adopters)". I wanted share my brief notes on the #libtechnyu blog partly because BIBFRAME is important for library technologists, but also because I was surprised by the extent to which Kuali OLE is being used for BIBFRAME prototyping. I knew about the [assessment work at UC Davis](http://www.lib.ucdavis.edu/bibflow/initial-kuali-ole-assessment/), but it turns out that the National Library of Medicine and the "Linked Data for Technical Services Production" group are also using it. Something to consider as NYU decides whether to migrate (eventually) from Aleph to Alma, or whether to consider an open source alternative like Kuali OLE.


### "BIBFRAME Lite" at the National Library of Medicine (NLM)

Showing an image of Jenn Riley's [metadata map](http://www.dlib.indiana.edu/~jenlrile/metadatamap/seeingstandards.pdf), Nancy Fallgren noted that libraries already rely on a wide range of metadata standards and adding "BIBFRAME Lite" to the mix is not to be feared. Her concern with the full BIBFRAME model is that it was supposed to be platform-agnostic, but in fact seems to be replicating MARC within RDF. This may have been inevitable, she thinks, given the pressure to make BIBFRAME fully backward-compatible with MARC. 

But MARC itself is problematic. It became a kind of victim of its own success as it took root in the 60s and spread around the world. In addition to serving as a transmission and encoding standard, which was its original purpose (i.e., for generating catalog cards), it began to assume aspects of a content standard with, e.g., MARC tags becoming short-hand for metadata elements. This is the kind of entanglement that initiatives like FRBR, RDA, and BIBFRAME are [meant to address](http://www.loc.gov/bibframe/faqs/#q04).  

With BIBFRAME Lite, NLM wants to put aside the use case of legacy record conversion, and focus instead on new metadata creation. They consulted with Zepheira on mapping just the [PCC/RDA core elements](http://www.dlib.indiana.edu/~jenlrile/metadatamap/seeingstandards.pdf), from the [Open Metadata Registry](http://www.rdaregistry.info/Elements/), and focusing on print monographs, but without items, holdings, and annotations. 

NLM is also working with Zepheira and UC Davis on the [BIBFLOW](http://www.lib.ucdavis.edu/bibflow/) project, and wants to test their BIBFRAME data model with Kuali OLE. They have 4 staff members working on the project, but welcome other collaborators.  Jackie Shieh is spending 3 months with them as a guest researcher, working on core vocabulary development and data modeling.

###BIBFRAME at a Small Academic Library

Jeremy Nelson talked about his development work at the Tutt Libary of Colorado College. Much of the information is covered in his [2013 Code4Lib article](http://journal.code4lib.org/articles/7349), but in this session he tried to emphasize the role of BIBFRAME in applications like  "[Aristotle](http://aristotle.readthedocs.org/en/latest/)", [Prospector Library Apps](http://tuttdemo.coloradocollege.edu/), and the [Catalog Pull Platform](http://intro2libsys.info/catalog-pull-platform). He also touched on the virtues of the MongoDB vs. RAM-dependent Redis as a datastore, The most interesting bit was at the end, where he mentioned that he and Aaron Schmidt have been contracted by the Library of Congress to develop BIBCAT, a public-access catalog based on BIBFRAME. I think an early prototype is here: [http://bibcat.org/](http://bibcat.org/)

###BIBFRAME at Stanford 

Nancy Lorimer discussed the Mellon-funded [Linked Data for Libraries](https://wiki.duraspace.org/pages/viewpage.action?pageId=41354028) (LD4L) project, which includes participants from Stanford, Cornell, and Harvard. They have assembled 42 use cases, two of which she mentioned explicitly: Cornell linking bibliographic records from their catalog with researcher identities from [VIVO](http://www.vivoweb.org/), and Stanford linking metadata from a collection of hip-hop flyers to Schema.org and the [LinkedBrainz](http://linkedbrainz.org) music ontology. 

She also mentioned a project called "Linked Data for Technical Services Production", with participants from Stanford, Cornell, Columbia, Harvard, Princeton and the Library of Congress. This group aims to provide a shared cloud-hosted environment, with a shared instance, it seems (again), of the open-source [https://www.kuali.org/ole Kuali OLE](ILS), along with integrated BIBFRAME editing tools. She said that Stanford is looking at ways to connect linked open BIBFRAME data with acquisitions and circulation data that need to linked but not open. 
