/**
        * ?琩才﹃琌?猭QQ??
        * @param {String} 才﹃
        * @return {bool} 琌?猭QQ??
        */
        function isQQ(aQQ) {
            var bValidate = RegExp(/^[1-9][0-9]{4,9}$/).test(aQQ);
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?琩才﹃琌?猭も审??
        * @param {String} 才﹃
        * @return {bool} 琌?猭も审??
        */
        function isPhone(aPhone) {        	
            var bValidate = RegExp(/^[09]{2}[0-9]{8}$/).test(aPhone);
            //var bValidate = RegExp(/^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/).test(aPhone);
            
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?琩才﹃琌?猭email
        * @param {String} 才﹃
        * @return {bool} 琌?猭email
        */
        function isEmail(aEmail) {
            var bValidate = RegExp(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/).test(aEmail);
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?琩才﹃琌琌俱?
        * @param {String} 才﹃
        * @return {bool} 琌琌俱?
        */
        function isInteger(s) {
            var isInteger = RegExp(/^[0-9]+$/);
            return (isInteger.test(s));
        }
        /*
            ?才?
        */
        function CharMode(iN) {
            if (iN >= 48 && iN <= 57) //?  
                return 1;
            if (iN >= 65 && iN <= 90) //?ダ  
                return 2;
            if (iN >= 97 && iN <= 122) //?  
                return 4;
            else
                return 8; //疭才  
        }
        /*
            ??才?
        */
        function bitTotal(num) {
            modes = 0;
            for (i = 0; i < 4; i++) {
                if (num & 1) modes++;
                num >>>= 1;
            }
            return modes;
        }
        /*
            盞????
        */
        function checkStrong(sPW) {
            if (sPW.length <= 4)
                return 0; //盞?び祏  
            Modes = 0;
            for (i = 0; i < sPW.length; i++) {
                //??–?才????Τぶ销家Α.  
                Modes |= CharMode(sPW.charCodeAt(i));
            }
            return bitTotal(Modes);
        }