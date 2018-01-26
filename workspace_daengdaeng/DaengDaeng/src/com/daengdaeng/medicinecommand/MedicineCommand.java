package com.daengdaeng.medicinecommand;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MedicineCommand {
	void execute(HttpServletRequest request, HttpServletResponse response);

}
