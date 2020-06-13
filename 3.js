var nilai = 5
cetak(5)
function cetak(nilai) {

    for (let i = 1; i <= nilai; i++) {
        var string = ""
        for (let j = 1; j <= nilai; j++) {
            if (i == 1 || i % 2 == 1) {
                if ((nilai + 1) / 2 == j) {
                    string += "= "

                } else {

                    string += "* "
                }
            } else if (i % 2 == 0) {
                if (j == 1 || j == 5) {
                    string += "* "
                }
                else if (j > 1 && j < 5) {
                    if (j % 2 == 0) {
                        string += "= "

                    } else {
                        string += "* "
                    }
                }
            }
        }
        console.log(string)

        //console.log("*")
    }
}