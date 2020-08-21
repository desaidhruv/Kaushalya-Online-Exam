Imports System.Data.SqlClient

Partial Class Login
    Inherits System.Web.UI.Page
    Dim conu As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=KST_00170")
    Dim con As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=test")
    Dim dar As SqlDataReader
    Dim com As SqlCommand
    Dim chk As Integer
    Dim update_flag As String

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Session("kaushalyaId") = txtkaushalyaID.Text
        Session.Timeout = 1

        conu.Open()
        com = New SqlCommand("select * from Registration where Kaushalya_ID='" & txtkaushalyaID.Text & "' and password1='" & TextBox2.Text & "'", conu)
        chk = com.ExecuteScalar()
        com = New SqlCommand("select * from Registration where Kaushalya_ID='" & txtkaushalyaID.Text & "' and password1='" & TextBox2.Text & "'", conu)
        dar = com.ExecuteReader()
        While dar.Read()
            update_flag = dar(9)
        End While
        conu.Close()

        If update_flag = "Y" Then
            Response.Redirect("StartExam.aspx")
        ElseIf update_flag = "N" Then
            Response.Redirect("ChangePassword.aspx")
        Else
            Label2.Visible = True
            Label2.Text = "Wrong ID and Password"
        End If
    End Sub
End Class
