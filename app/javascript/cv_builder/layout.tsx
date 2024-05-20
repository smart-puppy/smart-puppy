import "globals.css";
import { TopNavBar } from "components/TopNavBar";
import { Analytics } from "@vercel/analytics/react";

export const metadata = {
  title: "cv builder by smart puppy",
  description:
    "",
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <body>
        <TopNavBar />
        {children}
        <Analytics />
      </body>
    </html>
  );
}
