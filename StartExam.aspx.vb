
Imports System.Data.SqlClient

Partial Class examconfo
    Inherits System.Web.UI.Page
    Dim conu As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=KST_00170")
    Dim con As SqlConnection = New SqlConnection("server=192.168.74.26\LT;uid=sa;pwd=sa@1234;database=test")
    Dim dar As SqlDataReader
    Dim com As SqlCommand

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Response.Redirect("attempt.aspx")
    End Sub

    Protected Sub Page_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Init
        txtKaushalyaID.Text = Session("kaushalyaId")
        If txtKaushalyaID.Text = "" Then
            Response.Redirect("login.aspx")
        End If
        conu.Open()
        com = New SqlCommand("select Exam_Name from Registration where Kaushalya_ID='" & txtKaushalyaID.Text & "'", conu)
        dar = com.ExecuteReader
        ddexam.DataSource = dar
        ddexam.DataMember = "Registration"
        ddexam.DataTextField = "Exam_Name"
        ddexam.DataValueField = "Exam_Name"
        ddexam.DataBind()
        conu.Close()
    End Sub

End Class
