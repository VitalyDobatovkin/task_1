trigger AccountAddressTrigger on Account (before insert, before update) {
	
	if(Trigger.isInsert||Trigger.isUpdate) {
       AccountAddressTriggerHandler.updatePostalCode(Trigger.new);
	}

}