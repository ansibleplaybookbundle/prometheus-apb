FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"LS0tCl9wYXJhbXM6ICZfcGFyYW1zCiAgLSBuYW1lOiBQUk9NRVRIRVVTX1NFQ1VSRURfREVQTE9Z\
TUVOVAogICAgcmVxdWlyZWQ6IFRydWUKICAgIGRlZmF1bHQ6IFRydWUKICAgIHR5cGU6IGJvb2wK\
ICAgIHRpdGxlOiBQcm9tZXRoZXVzIFNlY3VyZWQgd2l0aCBPYXV0aC1Qcm94eQogIC0gbmFtZTog\
UFJPTUVUSEVVU19TVE9SQUdFX1NJWkUKICAgIHJlcXVpcmVkOiBUcnVlCiAgICBkZWZhdWx0OiAx\
MAogICAgdHlwZTogbnVtYmVyCiAgICB0aXRsZTogUHJvbWV0aGV1cyBTdG9yYWdlIFNpemUgKEdi\
KQogIC0gbmFtZTogUFJPTUVUSEVVU19BTV9TVE9SQUdFX1NJWkUKICAgIHJlcXVpcmVkOiBUcnVl\
CiAgICBkZWZhdWx0OiAxMAogICAgdHlwZTogbnVtYmVyCiAgICB0aXRsZTogUHJvbWV0aGV1cyBB\
bGVydCBNYW5hZ2VyIFN0b3JhZ2UgU2l6ZSAoR2IpCgoKdmVyc2lvbjogMS4wCm5hbWU6IHByb21l\
dGhldXMtYXBiCmRlc2NyaXB0aW9uOiBEZXBsb3kgUHJvbWV0aGV1cyBvbiB5b3VyIFByb2plY3QK\
YmluZGFibGU6IEZhbHNlCmFzeW5jOiBvcHRpb25hbAptZXRhZGF0YToKICBkaXNwbGF5TmFtZTog\
UHJvbWV0aGV1cyAoQVBCKQogIGltYWdlVXJsOiBodHRwczovL2F2YXRhcnMxLmdpdGh1YnVzZXJj\
b250ZW50LmNvbS91LzMzODA0NjI/cz0yMDAmdj00CiAgcHJvdmlkZXJEaXNwbGF5TmFtZTogIlJl\
ZCBIYXQsIEluYy4iCiAgbG9uZ0Rlc2NyaXB0aW9uOiBQcm9tZXRoZXVzIGlzIGFuIG9wZW4tc291\
cmNlIHN5c3RlbXMgbW9uaXRvcmluZyBhbmQgYWxlcnRpbmcgdG9vbGtpdCBvcmlnaW5hbGx5IGJ1\
aWx0IGF0IFNvdW5kQ2xvdWQuIFNpbmNlIGl0cyBpbmNlcHRpb24gaW4gMjAxMiwgbWFueSBjb21w\
YW5pZXMgYW5kIG9yZ2FuaXphdGlvbnMgaGF2ZSBhZG9wdGVkIFByb21ldGhldXMsIGFuZCB0aGUg\
cHJvamVjdCBoYXMgYSB2ZXJ5IGFjdGl2ZSBkZXZlbG9wZXIgYW5kIHVzZXIgY29tbXVuaXR5LiBJ\
dCBpcyBub3cgYSBzdGFuZGFsb25lIG9wZW4gc291cmNlIHByb2plY3QgYW5kIG1haW50YWluZWQg\
aW5kZXBlbmRlbnRseSBvZiBhbnkgY29tcGFueS4gVG8gZW1waGFzaXplIHRoaXMsIGFuZCB0byBj\
bGFyaWZ5IHRoZSBwcm9qZWN0J3MgZ292ZXJuYW5jZSBzdHJ1Y3R1cmUsIFByb21ldGhldXMgam9p\
bmVkIHRoZSBDbG91ZCBOYXRpdmUgQ29tcHV0aW5nIEZvdW5kYXRpb24gaW4gMjAxNiBhcyB0aGUg\
c2Vjb25kIGhvc3RlZCBwcm9qZWN0LCBhZnRlciBLdWJlcm5ldGVzLgogIHNlcnZpY2VOYW1lOiBw\
cm9tZXRoZXVzCnBsYW5zOgogIC0gbmFtZTogZXBoZW1lcmFsCiAgICBkZXNjcmlwdGlvbjogRGVw\
bG95bWVudCBvZiBQcm9tZXRoZXVzIGZvciBtZXRyaWNzIGFuZCBkYXRhIHZpZXcKICAgIGZyZWU6\
IFRydWUKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogRXBoZW1lcmFsCiAgICAgIGxv\
bmdEZXNjcmlwdGlvbjogVGhpcyBwbGFuIGRlcGxveSB0aGUgcHJvbWV0aGV1cyBiYXNlIHN0YWNr\
LCBQcm9tZXRoZXVzIHdpdGggYSBzaWRlY2FyIE9hdXRoLVByb3h5IGFuZCBhbHNvIHRoZSBBbGVy\
dE1hbmFnZXIgc2VydmVyIGJhc2Ugb24gRXBoZW1lcmFsIHN0b3JhZ2UuIFlvdSBjb3VsZCBkZXBs\
b3kgdGhlIEFkZG9ucyBsaWtlIEdyYXBoYW5hLCBBbGVydEJ1ZmZlciBhbmQgTm9kZS1FeHBvcnRl\
ciBpbiB0aGUgc2FtZSBwcm9qZWN0IGp1c3QgY2hhbmdpbmcgdG8gVHJ1ZSB0aGUgcHJvcGVyIGZp\
ZWxkcyAKICAgICAgY29zdDog4oKsMC4wMAogICAgcGFyYW1ldGVyczoKICAgICAgLSBuYW1lOiBQ\
Uk9NRVRIRVVTX1NFQ1VSRURfREVQTE9ZTUVOVAogICAgICAgIHJlcXVpcmVkOiBUcnVlCiAgICAg\
ICAgZGVmYXVsdDogVHJ1ZQogICAgICAgIHR5cGU6IGJvb2wKICAgICAgICB0aXRsZTogUHJvbWV0\
aGV1cyBTZWN1cmVkIHdpdGggT2F1dGgtUHJveHkKCiAgLSBuYW1lOiBwZXJzaXN0ZW50CiAgICBk\
ZXNjcmlwdGlvbjogRGVwbG95bWVudCBvZiBQcm9tZXRoZXVzIGZvciBtZXRyaWNzIGFuZCBkYXRh\
IHZpZXcKICAgIGZyZWU6IFRydWUKICAgIG1ldGFkYXRhOgogICAgICBkaXNwbGF5TmFtZTogUGVy\
c2lzdGVudAogICAgICBsb25nRGVzY3JpcHRpb246IFRoaXMgcGxhbiBkZXBsb3kgdGhlIHByb21l\
dGhldXMgYmFzZSBzdGFjaywgUHJvbWV0aGV1cyB3aXRoIGEgc2lkZWNhciBPYXV0aC1Qcm94eSBh\
bmQgYWxzbyB0aGUgQWxlcnRNYW5hZ2VyIHNlcnZlciBiYXNlIG9uIFBlcnNpc3RlbnQgc3RvcmFn\
ZS4gWW91IGNvdWxkIGRlcGxveSB0aGUgQWRkb25zIGxpa2UgR3JhcGhhbmEsIEFsZXJ0QnVmZmVy\
IGFuZCBOb2RlLUV4cG9ydGVyIGluIHRoZSBzYW1lIHByb2plY3QganVzdCBjaGFuZ2luZyB0byBU\
cnVlIHRoZSBwcm9wZXIgZmllbGRzIAogICAgICBjb3N0OiDigqwwLjAwCiAgICBwYXJhbWV0ZXJz\
OgogICAgICAtIG5hbWU6IFBST01FVEhFVVNfU0VDVVJFRF9ERVBMT1lNRU5UCiAgICAgICAgcmVx\
dWlyZWQ6IFRydWUKICAgICAgICBkZWZhdWx0OiBUcnVlCiAgICAgICAgdHlwZTogYm9vbAogICAg\
ICAgIHRpdGxlOiBQcm9tZXRoZXVzIFNlY3VyZWQgd2l0aCBPYXV0aC1Qcm94eQogICAgICAtIG5h\
bWU6IFBST01FVEhFVVNfU1RPUkFHRV9TSVpFCiAgICAgICAgcmVxdWlyZWQ6IFRydWUKICAgICAg\
ICBkZWZhdWx0OiAxMAogICAgICAgIHR5cGU6IG51bWJlcgogICAgICAgIHRpdGxlOiBQcm9tZXRo\
ZXVzIFN0b3JhZ2UgU2l6ZSAoR2IpCiAgICAgIC0gbmFtZTogUFJPTUVUSEVVU19BTV9TVE9SQUdF\
X1NJWkUKICAgICAgICByZXF1aXJlZDogVHJ1ZQogICAgICAgIGRlZmF1bHQ6IDEwCiAgICAgICAg\
dHlwZTogbnVtYmVyCiAgICAgICAgdGl0bGU6IFByb21ldGhldXMgQWxlcnQgTWFuYWdlciBTdG9y\
YWdlIFNpemUgKEdiKQo="
COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
RUN chmod -R g=u /opt/{ansible,apb}
USER apb
