<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Microblogging Site</title>
                <style>

                html, body {
                        font-family: Arial, sans-serif;
                        margin: 0;
                        padding: 0;
                        background: darkgrey;
                    }
                    h1 {
                        text-align: center;
                    }

                    h2{
                        text-align: center;
                        font-size: 40px;
                        padding: 20px;
                        width: 90%;
                        margin: 30px;
                        color: green;
                        border-radius: 10px;
                        background-color: #f1f1f1;
                    }

                    
                    h3 {
                        color: blue;
                        width: 30%;
                        margin:30px;
                        padding:10px;
                        border-radius: 10px;
                        background-color: #f1f1f1;
                    }

                    h4{
                        color: blue;
                        font-weight: bold;
                    }

                    div {
                        margin: 30px;
                        padding: 20px;
                        background: white;
                        width: 90%;
                        border-radius: 10px;
                        background-color: #f1f1f1;
                    }
                    ul {
                        list-style-type: none;
                        padding: 0;
                    }
                    li {
                        margin: 10px;
                        padding: 10px;
                    }
                </style>
            </head>
            <body>
                <h1>Microblogging Site Project</h1>
                <h2>
                    <strong>Group 4</strong>
                    <p>Programme: HND Computer Science</p>
                </h2>
                <br></br>   <br></br> 


                
                <h3>Users and Posts</h3>
                <xsl:apply-templates select="/microbloggingSite/users/user"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="user">
        <div>
            <h4><xsl:value-of select="name"/></h4>
            <p><strong>Username:</strong> <xsl:value-of select="username"/></p>
            <p><strong>Email:</strong> <xsl:value-of select="email"/></p>
            <p><strong>Bio:</strong> <xsl:value-of select="bio"/></p>
            <h4>Posts</h4>
            <ul>
                <xsl:apply-templates select="posts/post"/>
            </ul>
        </div>
    </xsl:template>
    
    <xsl:template match="post">
        <li>
            <p><strong>Post ID:</strong> <xsl:value-of select="postId"/></p>
            <p><strong>Content:</strong> <xsl:value-of select="content"/></p>
            <p><strong>Likes:</strong> <xsl:value-of select="likes"/></p>
            <p><strong>Timestamp:</strong> <xsl:value-of select="timestamp"/></p>
            <h4>Comments</h4>
            <ul>
                <xsl:apply-templates select="comments/comment"/>
            </ul>
        </li>
    </xsl:template>
    
    <xsl:template match="comment">
        <li>
            <p><strong>Comment ID:</strong> <xsl:value-of select="commentId"/></p>
            <p><strong>Content:</strong> <xsl:value-of select="content"/></p>
            <p><strong>Timestamp:</strong> <xsl:value-of select="timestamp"/></p>
        </li>
    </xsl:template>
</xsl:stylesheet>
