###�m��2�G�ϥΰj��\���ˬd���
#�b�ϥΨ�ơuhead()�v�ɧڭ̴ꥩ�o�{�F�@��Ʊ��A���N�O��5�C�M��6�C���G���ƤF�A�ӳo���ɮצ��G�����u�@�B�����Ƹ�ơA�]���ڭ̭n�}�l����ƲM�z
#�b�Фj�a²�檺��ƲM�z��Ƥ��e�A�ѩ�ڭ̤W�@�`�Ҥw�g�йL�F�j��\��A�ڧƱ�j�a���ΰj��\���ˬd�o����Ʀ��h�ֵ����Ƹ�ơA�бN�U�����M�z�覡�g���{���X
#���ˬdschool�o�����O�_����
#�Цh�гy�@�����A�üаO�o�C�O�_����(���W���H�K)
#�а���@�Ӱj��A�q����쪺�Ĥ@�ӭȶ}�l�ˬd�A�C���j��}�l�ɴN�ˬd��ƪ��W������p���O�_�s�b�P�{�b��m�W�٧����۵�����p
#���G�ڭ̦b�T�{�ɥi��|�Ψ�@�ӷs��ơu%in%�v�A�����\��O�T�{���䪺����O�_���b�k�䪺���󤤥X�{�L�A�p�U

dat[5,"school"] 

dat[1:4,"school"]

dat[5,"school"] %in% dat[1:4,"school"]

dat[6,"school"] 

dat[1:5,"school"]

dat[6,"school"] %in% dat[1:5,"school"]

###�m��2����
#�ڭ����ӥ��Q��k����ޭȧ令�j��i�������Φ��G
i = 2
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 3
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 4
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 5
dat[i,"school"]  %in% dat[1:(i-1),"school"]
i = 6
dat[i,"school"]  %in% dat[1:(i-1),"school"]
#���ۡA�ٰO�o��ƪ��i�H�z�L���ި�ơu$�v�s�W�ܼƶܡG
dat$DUP = FALSE # �]�i�H�Ρudat[,'DUP'] = FALSE�v�s�W

for (i in 2:nrow(dat)) {
  dat[i,'DUP'] = dat[i,"school"]  %in% dat[1:(i-1),"school"]
}

head(dat)