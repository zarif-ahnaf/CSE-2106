CREATE or Replace trigger updateTrigger before update on Test for each row update Test1 set test1=new.test where id1=new.id;