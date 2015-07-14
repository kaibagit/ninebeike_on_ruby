module ApiResCode
	module CommonCode
		Success = 0
		ServerError = 10001
		ParamError = 10002
		BusinessError = 10003
	end
	module MemberCode
		InvalidToken = 20101
		NotLogin = 20102
		VerifyFail = 20201
	end
end