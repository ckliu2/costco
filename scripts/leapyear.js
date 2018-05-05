function updateFromToDate(y, m)
{
    if (m == 0 || y < 2000) {
        document.getElementById('fromDate').value =  '';
        document.getElementById('toDate').value = '';

        return;
    }

    var d = getLastDay(y,m);

    document.getElementById('fromDate').value =  y + '/' + twoDigit(m) + '/01';
    document.getElementById('toDate').value = y + '/' + twoDigit(m) + '/' + twoDigit(d);
}

function twoDigit(d)
{
    if (d < 10)
        return "0" + d;
    else
        return "" + d;
}

function getLastDay(y, m)
{
    if (leapYear(y) == true && m == 2)
        return 29;

    if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12)
        return 31;

    if (m == 4 || m == 6 || m == 9 || m == 11)
        return 30;

    return 28;
}

function leapYear(intYear) {
    if (intYear % 100 == 0) {
        if (intYear % 400 == 0) { return true; }
    } else {
        if ((intYear % 4) == 0) { return true; }
    }
    return false;
}
