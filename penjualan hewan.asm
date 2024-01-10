.model small
.code
org 100h 

start:
	jmp mulai

a db 01
b db 01
c db 03
d db 04
e db 05
f db 06 
g db 07
j dw 15

daftar  db 13,10,'+--------------------------------------------------------+'
	db 13,10,'|                         DAFTAR HEWAN               |'
 	db 13,10,'+---+--------------------+--------+----------+-------------+'
	db 13,10,'|No |    Jenis Hewan     |    Gender Hewan   |   Harga     |'
	db 13,10,'+---+--------------------+-------------------+-------------+'
	db 13,10,'+01 +        Sapi        |       Jantan      | 19.700.000  +'
 	db 13,10,'+---+--------------------+-------------------+-------------+'
	db 13,10,'+02 +        Sapi        +       Betina      + 15.000.000  +'
 	db 13,10,'+---+--------------------+-------------------+-------------+'
	db 13,10,'+03 +       Kerbau       +       Jantan      + 26.000.000  +'
 	db 13,10,'+---+--------------------+-------------------+-------------+'            
	db 13,10,'+04 +       Kerbau       +       Betina      + 20.500.000  +'
 	db 13,10,'+---+--------------------+-------------------+-------------+'            
	db 13,10,'+05 +       Kambing      +       Jantan      + 5.700.000   +'
	db 13,10,'+---+--------------------+-------------------+-------------+'           
	db 13,10,'+06 +       Kambing      +       Betina      + 4.000.000   +'
 	db 13,10,'+---+--------------------+-------------------+-------------+'          
	db 13,10,'+07 +       Domba        +       Jantan      + 6.600.000   +'
	db 13,10,'+---+--------------------+-------------------+-------------+'             
	db 13,10,'+08 +       Domba        +       Betina      + 5.200.000   +'
 	db 13,10,'+---+--------------------+-------------------+-------------+','$' 


error	  db 13,10,'KODE YANG ANDA MASUKKAN SALAH $'
pilih_mtr db 13,10,'Silahkan masukkan No/kode Hewan yang Anda pilih: $'

	mulai:
	mov ah,09h
	mov dx,offset daftar
	int 21h
	mov ah,09h
	jmp proses
	jne error_msg

error_msg:
	mov ah,09h
	mov dx,offset error
	int 21h
	int 20h

proses:
	mov ah,09h
	mov dx,offset pilih_mtr
	int 21h

	
	mov ah,1
	int 21h
	mov bl,al
	cmp bh,'0'
	cmp bl,'1'
	je hasil1

	cmp bh,'0'
	cmp bl,'2'
	je hasil2

	cmp bh,'0'
	cmp bl,'3'
	je hasil3

	cmp bh,'0'
	cmp bl,'4'
	je hasil4

	cmp bh,'0'
	cmp bl,'5'
	je hasil5

	cmp bh,'0'
	cmp bl,'6'
	je hasil6  
	
	cmp bh,'0'
	cmp bl,'7'
	je hasil7  
	
	cmp bh,'0'
	cmp bl,'8'
	je hasil8

	jne error_msg


hasil1:
	mov ah,09h
	lea dx,teks1
	int 21h
	int 20h

hasil2:
	mov ah,09h
	lea dx,teks2
	int 21h
	int 20h

hasil3:
	mov ah,09h
	lea dx,teks3
	int 21h
	int 20h

hasil4:
	mov ah,09h
	lea dx,teks4
	int 21h
	int 20h

hasil5:
	mov ah,09h
	lea dx,teks5
	int 21h
	int 20h

hasil6:
	mov ah,09h
	lea dx,teks6
	int 21h
	int 20h
	
hasil7:
	mov ah,09h
	lea dx,teks7
	int 21h
	int 20h
	
hasil8:
    mov ah,09h
    lea dx,teks8
    int 21h
    int 20h

teks1	db 13,10,'Anda Memilih Sapi'
 	db 13,10,'Ber Gender Jantan'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 19.700.000 '
 	db 13,10,'Terima Kasih $'

teks2	db 13,10,'Anda Memilih Sapi'
 	db 13,10,'Ber Gender Betina'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 15.000.000 '
 	db 13,10,'Terima Kasih $'

teks3	db 13,10,'Anda Memilih Kerbau'
 	db 13,10,'Ber Gender Jantan'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 26.000.000 '
 	db 13,10,'Terima Kasih $'

teks4	db 13,10,'Anda Memilih Kerbau'
 	db 13,10,'Ber Gender Betina'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 20.500.000 '
 	db 13,10,'Terima Kasih $'

teks5	db 13,10,'Anda Memilih Kambing '
 	db 13,10,'Ber Gender Jantan'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 5.700.000 '
 	db 13,10,'Terima Kasih $'

teks6	db 13,10,'Anda Memilih Kambing'
 	db 13,10,'Ber Gender Betina'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 4.000.000 '
 	db 13,10,'Terima Kasih $'

teks7	db 13,10,'Anda Memilih Domba'
 	db 13,10,'Ber Gender Jantan'
 	db 13,10,'Total harga yang Harus Anda Bayar: Rp. 6.600.000 '
 	db 13,10,'Terima Kasih $'
teks8   db 13,10,'Anda Memilih Domba'
    db 13,10,'Ber Gender Betina'   
    db 13,10,'Total harga yang Harus Anda Bayar: Rp. 5.200.000 ' 
    db 13,10,'Terima Kasih$' 
end start
