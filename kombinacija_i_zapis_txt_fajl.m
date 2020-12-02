close all
clear all
clc

X5=true;X4=true;X3=true;X2=true;X1=true;X0=true;
X=[X5,X4,X3,X2,X1,X0];
Y5=true;Y4=true;Y3=true;Y2=true;Y1=true;Y0=true;
Y=[Y5,Y4,Y3,Y2,Y1,Y0];

a1=perms(X);
u1=unique(a1,'rows')

a2=perms(Y);
u2=unique(a2,'rows')

k1=size(u1);
rowu1=k1(1)

k2=size(u2);
rowu2=k2(1)
m=0;
komb=[true,true,true,true,true,true,true,true,true,true,true,true,true,true];

for i=1:rowu1
    for j=1:rowu2
        X=u1(i,:);
        Y=u2(j,:);
        
        Fa1Cin=false;
        Fa1A=X(5) & Y(6);
        Fa1B=X(6) & Y(5);
        Fa1S=xor(Fa1Cin,(xor(Fa1A,Fa1B)));
        Fa1Cout=(Fa1A & Fa1B)|| (Fa1Cin & (Fa1A || Fa1B));
        
        Fa2Cin=Fa1Cout;
        Fa2A=X(5) & Y(5);
        Fa2B=X(6) & Y(4);
        Fa2S=xor(Fa2Cin,(xor(Fa2A,Fa2B)));
        Fa2Cout=(Fa2A & Fa2B)|| (Fa2Cin & (Fa2A || Fa2B));
        
        Fa3Cin=Fa2Cout;
        Fa3A=X(5) & Y(4);
        Fa3B=X(6) & Y(3);
        Fa3S=xor(Fa3Cin,(xor(Fa3A,Fa3B)));
        Fa3Cout=(Fa3A & Fa3B)|| (Fa3Cin & (Fa3A || Fa3B));
        
        Fa4Cin=Fa3Cout;
        Fa4A=X(5) & Y(3);
        Fa4B=X(6) & Y(2);
        Fa4S=xor(Fa4Cin,(xor(Fa4A,Fa4B)));
        Fa4Cout=(Fa4A & Fa4B)|| (Fa4Cin & (Fa4A || Fa4B));
        
        Fa5Cin=Fa4Cout;
        Fa5A=X(5) & Y(2);
        Fa5B=not((X(1) & Y(6)));
        Fa5S=xor(Fa5Cin,(xor(Fa5A,Fa5B)));
        Fa5Cout=(Fa5A & Fa5B)|| (Fa5Cin & (Fa5A || Fa5B));
        
        Fa6Cin=Fa5Cout;
        Fa6A=not(X(1) & Y(5));
        Fa6B=true;
        Fa6S=xor(Fa6Cin,(xor(Fa6A,Fa6B)));
        Fa6Cout=(Fa6A & Fa6B)|| (Fa6Cin & (Fa6A || Fa6B));
        
        Fa7Cin=false;
        Fa7A=Fa2S;
        Fa7B=X(4) & Y(6);
        Fa7S=xor(Fa7Cin,(xor(Fa7A,Fa7B)));
        Fa7Cout=(Fa7A & Fa7B)|| (Fa7Cin & (Fa7A || Fa7B));
        
        Fa8Cin=Fa7Cout;
        Fa8A=Fa3S;
        Fa8B=X(4) & Y(5);
        Fa8S=xor(Fa8Cin,(xor(Fa8A,Fa8B)));
        Fa8Cout=(Fa8A & Fa8B)|| (Fa8Cin & (Fa8A || Fa8B));
        
        Fa9Cin=Fa8Cout;
        Fa9A=Fa4S;
        Fa9B=X(4) & Y(4);
        Fa9S=xor(Fa9Cin,(xor(Fa9A,Fa9B)));
        Fa9Cout=(Fa9A & Fa9B)|| (Fa9Cin & (Fa9A || Fa9B));
        
        Fa10Cin=Fa9Cout;
        Fa10A=Fa5S;
        Fa10B=X(4) & Y(3);
        Fa10S=xor(Fa10Cin,(xor(Fa10A,Fa10B)));
        Fa10Cout=(Fa10A & Fa10B)|| (Fa10Cin & (Fa10A || Fa10B));
        
        Fa11Cin=Fa10Cout;
        Fa11A=Fa6S;
        Fa11B=X(4) & Y(2);
        Fa11S=xor(Fa11Cin,(xor(Fa11A,Fa11B)));
        Fa11Cout=(Fa11A & Fa11B)|| (Fa11Cin & (Fa11A || Fa11B));
        
        Fa12Cin=Fa10Cout;
        Fa12A=Fa6Cout;
        Fa12B=not(X(1) & Y(4));
        Fa12S=xor(Fa12Cin,(xor(Fa12A,Fa12B)));
        Fa12Cout=(Fa12A & Fa12B)|| (Fa12Cin & (Fa12A || Fa12B));
        
        Fa13Cin=false;
        Fa13A=Fa8S;
        Fa13B=X(3) & Y(6);
        Fa13S=xor(Fa13Cin,(xor(Fa13A,Fa13B)));
        Fa13Cout=(Fa13A & Fa13B)|| (Fa13Cin & (Fa13A || Fa13B));
        
        Fa14Cin=Fa13Cout;
        Fa14A=Fa9S;
        Fa14B=X(3) & Y(5);
        Fa14S=xor(Fa14Cin,(xor(Fa14A,Fa14B)));
        Fa14Cout=(Fa14A & Fa14B)|| (Fa14Cin & (Fa14A || Fa14B));
        
        Fa15Cin=Fa14Cout;
        Fa15A=Fa10S;
        Fa15B=X(3) & Y(4);
        Fa15S=xor(Fa15Cin,(xor(Fa15A,Fa15B)));
        Fa15Cout=(Fa15A & Fa15B)|| (Fa15Cin & (Fa15A || Fa15B));
        
        Fa16Cin=Fa15Cout;
        Fa16A=Fa11S;
        Fa16B=X(3) & Y(3);
        Fa16S=xor(Fa16Cin,(xor(Fa16A,Fa16B)));
        Fa16Cout=(Fa16A & Fa16B)|| (Fa16Cin & (Fa16A || Fa16B));
        
        Fa17Cin=Fa16Cout;
        Fa17A=Fa12S;
        Fa17B=X(3) & Y(2);
        Fa17S=xor(Fa17Cin,(xor(Fa17A,Fa17B)));
        Fa17Cout=(Fa17A & Fa17B)|| (Fa17Cin & (Fa17A || Fa17B));
        
        Fa18Cin=Fa17Cout;
        Fa18A=Fa12Cout;
        Fa18B=not(X(1) & Y(3));
        Fa18S=xor(Fa18Cin,(xor(Fa18A,Fa18B)));
        Fa18Cout=(Fa18A & Fa18B)|| (Fa18Cin & (Fa18A || Fa18B));
        
        Fa19Cin=false;
        Fa19A=Fa14S;
        Fa19B=X(2) & Y(6);
        Fa19S=xor(Fa19Cin,(xor(Fa19A,Fa19B)));
        Fa19Cout=(Fa19A & Fa19B)|| (Fa19Cin & (Fa19A || Fa19B));
        
        Fa20Cin=Fa19Cout;
        Fa20A=Fa15S;
        Fa20B=X(2) & Y(5);
        Fa20S=xor(Fa20Cin,(xor(Fa20A,Fa20B)));
        Fa20Cout=(Fa20A & Fa20B)|| (Fa20Cin & (Fa20A || Fa20B));
        
        Fa21Cin=Fa20Cout;
        Fa21A=Fa16S;
        Fa21B=X(2) & Y(4);
        Fa21S=xor(Fa21Cin,(xor(Fa21A,Fa21B)));
        Fa21Cout=(Fa21A & Fa21B)|| (Fa21Cin & (Fa21A || Fa21B));
        
        Fa22Cin=Fa21Cout;
        Fa22A=Fa17S;
        Fa22B=X(2) & Y(3);
        Fa22S=xor(Fa22Cin,(xor(Fa22A,Fa22B)));
        Fa22Cout=(Fa22A & Fa22B)|| (Fa22Cin & (Fa22A || Fa22B));
        
        Fa23Cin=Fa22Cout;
        Fa23A=Fa18S;
        Fa23B=X(2) & Y(2);
        Fa23S=xor(Fa23Cin,(xor(Fa23A,Fa23B)));
        Fa23Cout=(Fa23A & Fa23B)|| (Fa23Cin & (Fa23A || Fa23B));
        
        Fa24Cin=Fa23Cout;
        Fa24A=Fa18Cout;
        Fa24B=not(X(1) & Y(2));
        Fa24S=xor(Fa24Cin,(xor(Fa24A,Fa24B)));
        Fa24Cout=(Fa24A & Fa24B)|| (Fa24Cin & (Fa24A || Fa24B));
        
        Fa25Cin=false;
        Fa25A=Fa20S;
        Fa25B=not(X(6) & Y(1));
        Fa25S=xor(Fa25Cin,(xor(Fa25A,Fa25B)));
        Fa25Cout=(Fa25A & Fa25B)|| (Fa25Cin & (Fa25A || Fa25B));
        
        Fa26Cin=Fa25Cout;
        Fa26A=Fa21S;
        Fa26B=not(X(5) & Y(1));
        Fa26S=xor(Fa26Cin,(xor(Fa26A,Fa26B)));
        Fa26Cout=(Fa26A & Fa26B)|| (Fa26Cin & (Fa26A || Fa26B));
        
        Fa27Cin=Fa26Cout;
        Fa27A=Fa22S;
        Fa27B=not(X(4) & Y(1));
        Fa27S=xor(Fa27Cin,(xor(Fa27A,Fa27B)));
        Fa27Cout=(Fa27A & Fa27B)|| (Fa27Cin & (Fa27A || Fa27B));
        
        Fa28Cin=Fa27Cout;
        Fa28A=Fa23S;
        Fa28B=not(X(3) & Y(1));
        Fa28S=xor(Fa28Cin,(xor(Fa28A,Fa28B)));
        Fa28Cout=(Fa28A & Fa28B)|| (Fa28Cin & (Fa28A || Fa28B));
        
        Fa29Cin=Fa28Cout;
        Fa29A=Fa24S;
        Fa29B=not(X(2) & Y(1));
        Fa29S=xor(Fa29Cin,(xor(Fa29A,Fa29B)));
        Fa29Cout=(Fa29A & Fa29B)|| (Fa29Cin & (Fa29A || Fa29B));
        
        Fa30Cin=Fa29Cout;
        Fa30A=Fa24Cout;
        Fa30B=X(1) & Y(1);
        Fa30S=xor(Fa30Cin,(xor(Fa30A,Fa30B)));
        Fa30Cout=(Fa30A & Fa30B)|| (Fa30Cin & (Fa30A || Fa30B));
        
        Kombinacija=[Fa1Cout,Fa2Cout,Fa3Cout,Fa4Cout,Fa5Cout,Fa6S,Fa11Cout,Fa12S,Fa17Cout,Fa18S,Fa23Cout,Fa24S,Fa29Cout,Fa30S];
        
        P0=X(6) & Y(6);
        P1=Fa1S;
        P2=Fa7S;
        P3=Fa13S;
        P4=Fa19S;
        P5=Fa25S;
        P6=Fa26S;
        P7=Fa27S;
        P8=Fa28S;
        P9=Fa29S;
        P10=Fa30S;
        P11=not(Fa30Cout);
        P=[P11,P10,P9,P8,P7,P6,P5,P4,P3,P2,P1,P0];
        m=m+1;
        komb=vertcat(komb,Kombinacija);
        disp('Kombinacija'),disp(Kombinacija);
        disp('P'),disp(P);
        disp('X'),disp(X);
        disp('Y'),disp(Y);
    end
end
konacno=komb(2:m+1,:);
ukonacno=unique(konacno,'rows');
dlmwrite('kombinacija49.txt',ukonacno)



