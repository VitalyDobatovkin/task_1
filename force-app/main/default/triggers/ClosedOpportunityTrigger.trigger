trigger ClosedOpportunityTrigger on Opportunity (before insert,before update) {
	if(Trigger.isInsert||Trigger.isUpdate) {

		List<Task> tasks = new List<Task>();
		for(Opportunity opp : Trigger.new) {
			if(opp.StageName.equals('Closed Won')) {
				Task task = new Task();
				task.Subject = 'Follow Up Test Task';
				task.WhatId = opp.Id;
				tasks.add(task);
			}
		}
		insert tasks;


	}

}