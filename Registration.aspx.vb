Imports System.Data.SqlClient
Partial Class Registration
    Inherits System.Web.UI.Page
    Dim conu As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=KST_00170")
    Dim con As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=test")
    Dim dar As SqlDataReader
    Dim com As SqlCommand
    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        con.Open()
        com = New SqlCommand("select * from KaushalyaReg where KaushalyaID='" & txtkaushalyaid.Text & "'", con)
        dar = com.ExecuteReader
        While dar.Read()
            txtname.Text = dar(1)
            txtmobileno.Text = dar(2)
            txtemailid.Text = dar(3)
            txtcollegename.Text = dar(4)
            txtbranch.Text = dar(5)
        End While
        con.Close()
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim chk As Integer
        conu.Open()
        com = New SqlCommand("select * from Registration where Kaushalya_ID='" & txtkaushalyaid.Text & "' and Exam_name='" & ddexamname.SelectedItem.Text & "'", conu)
        chk = com.ExecuteScalar()
        conu.Close()
        If chk = 0 Then
            conu.Open()
            com = New SqlCommand("insert into Registration values('" & txtkaushalyaid.Text & "','" & txtname.Text & "','" & txtmobileno.Text & "','" & txtemailid.Text & "','" & txtcollegename.Text & "','" & txtbranch.Text & "','" & ddexamname.SelectedItem.Text & "','','N','" & txtpassword.Text & "')", conu)
            com.ExecuteNonQuery()
            conu.Close()
            Label1.Visible = True
            Label1.Text = "Registered Successfully"
        Else
            Label1.Visible = True
            Label1.Text = "Already Registered"
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        conu.Open()
        com = New SqlCommand("truncate table Registration", conu)
        com.ExecuteNonQuery()
        conu.Close()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("Home.aspx")
    End Sub

    
End Class
