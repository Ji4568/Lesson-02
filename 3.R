###�ĤT�`�G²���ƲM�z�μg�X�ɮ�(1)
#�ƹ�W�A���ڭ̻ݭn���\��bR�̭��i�H�Ϋ�²�檺��ư���A�]���q�o�̶}�l�ڭ̭n�}�l�ǲߤj�q����ơA���P�Ǥ@�w�n�F�ѴN��A�����D�o�Ǩ�ơA�]�i�H�ΰj��ɤO�����C�@��Ʊ�
#��ơuduplicated()�v�i�H������M��Ӹ�ƪ��O�_�����ƪ��C

dat$DUP1 = duplicated(dat)
dat[,c("school", "DUP1")]

#�]�i�H�����ˬd��@�ܼƬO�_����
dat$DUP2 = duplicated(dat$school)
dat[,c("school", "DUP1", "DUP2")]

#�@�Ӥ@���ˬdDUP1�PDUP2�O�_�ۦP���I�շ��A�o�ɭԧڭ̥i�H�Ψ�ơuall.equal�v
all.equal(dat$DUP1, dat$DUP2)
