FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IHByb21ldGhldXMtYXBiCmRlc2NyaXB0aW9uOiBEZXBsb3kgUHJv\
bWV0aGV1cyBvbiB5b3VyIFByb2plY3QKYmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbApt\
ZXRhZGF0YToKICBkaXNwbGF5TmFtZTogUHJvbWV0aGV1cyAoQVBCKQogIGltYWdlVXJsOiBodHRw\
czovL2F2YXRhcnMxLmdpdGh1YnVzZXJjb250ZW50LmNvbS91LzMzODA0NjI/cz0yMDAmdj00CiAg\
cHJvdmlkZXJEaXNwbGF5TmFtZTogIlJlZCBIYXQsIEluYy4iCiAgbG9uZ0Rlc2NyaXB0aW9uOiBQ\
cm9tZXRoZXVzIGlzIGFuIG9wZW4tc291cmNlIHN5c3RlbXMgbW9uaXRvcmluZyBhbmQgYWxlcnRp\
bmcgdG9vbGtpdCBvcmlnaW5hbGx5IGJ1aWx0IGF0IFNvdW5kQ2xvdWQuIFNpbmNlIGl0cyBpbmNl\
cHRpb24gaW4gMjAxMiwgbWFueSBjb21wYW5pZXMgYW5kIG9yZ2FuaXphdGlvbnMgaGF2ZSBhZG9w\
dGVkIFByb21ldGhldXMsIGFuZCB0aGUgcHJvamVjdCBoYXMgYSB2ZXJ5IGFjdGl2ZSBkZXZlbG9w\
ZXIgYW5kIHVzZXIgY29tbXVuaXR5LiBJdCBpcyBub3cgYSBzdGFuZGFsb25lIG9wZW4gc291cmNl\
IHByb2plY3QgYW5kIG1haW50YWluZWQgaW5kZXBlbmRlbnRseSBvZiBhbnkgY29tcGFueS4gVG8g\
ZW1waGFzaXplIHRoaXMsIGFuZCB0byBjbGFyaWZ5IHRoZSBwcm9qZWN0J3MgZ292ZXJuYW5jZSBz\
dHJ1Y3R1cmUsIFByb21ldGhldXMgam9pbmVkIHRoZSBDbG91ZCBOYXRpdmUgQ29tcHV0aW5nIEZv\
dW5kYXRpb24gaW4gMjAxNiBhcyB0aGUgc2Vjb25kIGhvc3RlZCBwcm9qZWN0LCBhZnRlciBLdWJl\
cm5ldGVzLgogIHNlcnZpY2VOYW1lOiBwcm9tZXRoZXVzCnBsYW5zOgogIC0gbmFtZTogZGVmYXVs\
dAogICAgZGVzY3JpcHRpb246IERlcGxveW1lbnQgb2YgUHJvbWV0aGV1cyBmb3IgbWV0cmljcyBh\
bmQgZGF0YSB2aWV3CiAgICBmcmVlOiBUcnVlCiAgICBtZXRhZGF0YToKICAgICAgZGlzcGxheU5h\
bWU6IERlZmF1bHQKICAgICAgbG9uZ0Rlc2NyaXB0aW9uOiBEZXBsb3kgUHJvbWV0aGV1cyBTdGFj\
ayBvbiBPcGVuc2hpZnQKICAgICAgY29zdDog4oKsMC4wMAogICAgcGFyYW1ldGVyczoKICAgICAg\
LSBuYW1lOiBQUk9NRVRIRVVTX1NFQ1VSRURfREVQTE9ZTUVOVAogICAgICAgIHJlcXVpcmVkOiBU\
cnVlCiAgICAgICAgZGVmYXVsdDogVHJ1ZQogICAgICAgIHR5cGU6IGJvb2wKICAgICAgICB0aXRs\
ZTogUHJvbWV0aGV1cyBTZWN1cmVkIHdpdGggT2F1dGgtUHJveHkKICAgICAgLSBuYW1lOiBQUk9N\
RVRIRVVTX1NUT1JBR0VfU0laRQogICAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAgICAgZGVmYXVs\
dDogMTAKICAgICAgICB0eXBlOiBudW1iZXIKICAgICAgICB0aXRsZTogUHJvbWV0aGV1cyBTdG9y\
YWdlIFNpemUgKEdiKQogICAgICAtIG5hbWU6IFBST01FVEhFVVNfQU1fU1RPUkFHRV9TSVpFCiAg\
ICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAgICBkZWZhdWx0OiAxMAogICAgICAgIHR5cGU6IG51\
bWJlcgogICAgICAgIHRpdGxlOiBQcm9tZXRoZXVzIEFsZXJ0IE1hbmFnZXIgU3RvcmFnZSBTaXpl\
IChHYikK"
COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
