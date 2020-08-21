Imports System.Data.SqlClient

Partial Class ChangePassword
    Inherits System.Web.UI.Page
    Dim conu As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=KST_00170")
    Dim con As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=test")
    Dim dar As SqlDataReader
    Dim com As SqlCommand
    Dim Y As String = "Y"
    ' Dim f As Integer = 0
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        txtkaushalyaID.Text = Session("kaushalyaId")
        If txtkaushalyaID.Text = "" Then
            Response.Redirect("login.aspx")
        End If
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("Home.aspx")
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'conu.Open()
        'com = New SqlCommand("select count(*) from Registration where Kaushalya_ID='" & txtkaushalyaID.Text & "' and password1='" & txtoldpassword.Text & "'", conu)
        'f = com.ExecuteScalar
        'conu.Close()
        If txtnewpassword1.Text = txtnewpassword2.Text Then

            conu.Open()
            com = New SqlCommand("update Registration set password1='" & txtnewpassword1.Text & "' where Kaushalya_ID='" & txtkaushalyaID.Text & "' ", conu)
            com.ExecuteNonQuery()
            conu.Close()
            conu.Open()
            com = New SqlCommand("update Registration set update_flag='Y' where Kaushalya_ID='" & txtkaushalyaID.Text & "' ", conu)
            com.ExecuteNonQuery()
            conu.Close()
            Response.Redirect("login.aspx")
      
        Else
        txtout.Text = "confirm and new Passwords do not match"
        txtout.Visible = True
        End If
    End Sub

End Class
