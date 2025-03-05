---
layout: post
title:  "Me"
date:   2025-03-04 20:55:59 -0700
categories: devops cv
---

## Projects

* *Bank*
* *Operations*
* *Multimedia streaming management*
* *DevOps assessment*
* *Sports betting*
* *Retail*
* *Entertainment* (streaming):
* *Payroll system*



## Tools

{% for item in site.data.skills %}
 <div style="display: inline-block; padding: 0 25px; height: 50px; font-size: 16px; line-height: 50px; border-radius: 25px; background-color: #f1f1f1;">
  <img src="{{ item.link }}" alt="{{ item.name }}" style="float: left; margin: 0 10px 0 -25px; height: 50px; width: 50px; border-radius: 50%;">{{ item.name }}</div>
{% endfor %}

<br>
- Other tools (not often used ): Barracuda WAF, Akamai, Harbor, Jenkins, CVAT, MediaMTX, OpenLDAP, Istio, Nvidia Morpheus, IIS

## Certifications
* Certified Kubernetes Administrator
* Azure Administrator Associate
* Terraform Associate